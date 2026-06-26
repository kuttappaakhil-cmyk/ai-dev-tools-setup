# YouTube transcripts

One subfolder per author: `youtube-transcripts/<author-slug>/`, one Markdown file per video:
`<video-id>--<short-title>.md`.

Transcripts are pulled with the free, no-API-key [`youtube-transcript-api`](https://pypi.org/project/youtube-transcript-api/) Python library (script: [`../../scripts/fetch_transcript.py`](../../scripts/fetch_transcript.py)) — **not** Supadata, which requires an account + key.

Each file starts with a metadata header:

```markdown
# <Video title>
- Channel: <name>
- URL: https://www.youtube.com/watch?v=<id>
- Published: <YYYY-MM-DD>
- Collected: <YYYY-MM-DD> via youtube-transcript-api

---

<transcript text>
```
