#!/usr/bin/env python3
"""Fetch a YouTube transcript (no API key) and save it as Markdown.

Uses the free `youtube-transcript-api` library (NOT Supadata, which needs an
account + key). Video title/channel come from YouTube's public oEmbed endpoint.

Usage:
    python3 scripts/fetch_transcript.py <video-id-or-url> --author <slug> \
        [--title "Override title"] [--published YYYY-MM-DD]

Output:
    research/youtube-transcripts/<author>/<video-id>--<slug>.md
"""
import argparse
import datetime
import json
import os
import re
import sys
import urllib.parse
import urllib.request
import warnings

warnings.filterwarnings("ignore")  # silence LibreSSL/urllib3 notice on macOS

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT_DIR = os.path.join(ROOT, "research", "youtube-transcripts")


def extract_id(s: str) -> str:
    if re.fullmatch(r"[A-Za-z0-9_-]{11}", s):
        return s
    u = urllib.parse.urlparse(s)
    if u.query:
        q = urllib.parse.parse_qs(u.query)
        if "v" in q:
            return q["v"][0]
    m = re.search(r"(?:youtu\.be/|/shorts/|/embed/|/live/)([A-Za-z0-9_-]{11})", s)
    if m:
        return m.group(1)
    raise SystemExit(f"Could not extract a video id from: {s}")


def oembed(vid: str):
    url = "https://www.youtube.com/oembed?" + urllib.parse.urlencode(
        {"url": f"https://www.youtube.com/watch?v={vid}", "format": "json"}
    )
    try:
        with urllib.request.urlopen(url, timeout=15) as r:
            d = json.load(r)
            return d.get("title"), d.get("author_name")
    except Exception:
        return None, None


def fetch_text(vid: str) -> str:
    from youtube_transcript_api import YouTubeTranscriptApi

    api = YouTubeTranscriptApi()
    try:
        fetched = api.fetch(vid, languages=["en", "en-US", "en-GB"])
    except Exception:
        # fall back to whatever transcript exists (e.g. auto-generated, other lang)
        fetched = next(iter(api.list(vid))).fetch()
    rows = fetched.to_raw_data() if hasattr(fetched, "to_raw_data") else fetched
    return " ".join(
        r["text"].strip() for r in rows if r.get("text", "").strip()
    )


def slugify(s: str) -> str:
    s = re.sub(r"[^a-zA-Z0-9]+", "-", (s or "").lower()).strip("-")
    return s[:60] or "video"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("video", help="YouTube video id or URL")
    ap.add_argument("--author", required=True, help="author slug, e.g. ross-simmonds")
    ap.add_argument("--title", help="override the title from oEmbed")
    ap.add_argument("--published", default="unknown", help="YYYY-MM-DD if known")
    a = ap.parse_args()

    vid = extract_id(a.video)
    title, channel = oembed(vid)
    title = a.title or title or vid

    try:
        text = fetch_text(vid)
    except Exception as e:
        print(f"  SKIP {vid}: {type(e).__name__}: {str(e)[:120]}", file=sys.stderr)
        return 1
    if not text:
        print(f"  SKIP {vid}: empty transcript", file=sys.stderr)
        return 1

    folder = os.path.join(OUT_DIR, a.author)
    os.makedirs(folder, exist_ok=True)
    path = os.path.join(folder, f"{vid}--{slugify(title)}.md")
    words = len(text.split())
    with open(path, "w") as f:
        f.write(
            f"# {title}\n"
            f"- Channel: {channel or 'n/a'}\n"
            f"- URL: https://www.youtube.com/watch?v={vid}\n"
            f"- Published: {a.published}\n"
            f"- Collected: {datetime.date.today().isoformat()} via youtube-transcript-api\n"
            f"- Word count: {words}\n\n---\n\n{text}\n"
        )
    print(f"  saved {os.path.relpath(path, ROOT)} ({words} words)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
