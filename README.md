# AI Dev Tools Setup

A short log of setting up an AI-assisted development environment: the **Cursor** IDE with the **Claude Code** and **Codex** extensions, plus creating and publishing this repository.

> Setup performed on macOS (Darwin 25.0.0) on 2026-06-25.

## Tools installed

| Tool | Identifier | Version | Notes |
|------|-----------|---------|-------|
| Cursor IDE | — | (pre-installed) | Already present at `/Applications/Cursor.app` |
| Claude Code (Cursor extension) | `anthropic.claude-code` | 2.1.191 | Installed during this setup |
| Codex (Cursor extension) | `openai.chatgpt` | 26.616.81150 | Marketplace listing is **"ChatGPT – Codex"** — this is what searching "Codex" returns |
| GitHub CLI | `gh` | (pre-installed) | Used to create + push this repo; authenticated to GitHub |

## Steps completed

- [x] **1. Install Cursor IDE** — already installed on this machine, so no action needed.
- [x] **2. Add the Claude Code extension** — installed `anthropic.claude-code` v2.1.191.
- [x] **2b. Log in to Claude Code** — signed in via the Claude Code panel in Cursor; it connected through the already-authenticated `claude` CLI on this machine.
- [x] **3. Add the Codex extension** — installed `openai.chatgpt` v26.616.81150.
- [x] **3b. Log in to Codex** — signed in via the Codex panel in Cursor using a personal OpenAI account; confirmed connected.
- [x] **4. Create a public GitHub repository** — this repo, created with `gh`.
- [x] **5. Open the repository in Cursor.**
- [x] **6. Create this README.md.**
- [x] **7. Commit and push to GitHub.**
- [ ] **8. Reply to the originating email** with the link to this README.

> Both extension logins are now complete. Claude Code (2b) connected automatically through the existing `claude` CLI session; Codex (3b) was signed in interactively with a personal OpenAI account. The only remaining box is step 8 — sending the email reply with the link to this README.

## Issues I ran into and how I solved them

1. **The `cursor` shell command wasn't on `PATH`.**
   Cursor was installed, but the `cursor` CLI hadn't been added to `PATH` (normally done via *Cmd+Shift+P → "Shell Command: Install 'cursor' command"*). Rather than rely on it, I invoked the binary that ships inside the app directly:
   ```bash
   /Applications/Cursor.app/Contents/Resources/app/bin/cursor --install-extension <id>
   ```

2. **Figuring out the correct extension ID for "Codex".**
   Searching the marketplace for "Codex" surfaces an extension whose display name is *"ChatGPT – Codex"*. The actual extension ID is `openai.chatgpt`, not the more obvious guesses — `openai.codex` and `openai.openai-chatgpt` both return *"Extension not found."* Confirmed the right one by attempting each:
   ```bash
   cursor --install-extension openai.chatgpt   # ✅ installed v26.616.81150
   cursor --install-extension openai.codex     # ❌ not found
   ```

3. **No Homebrew on the machine.**
   I'd planned to fall back to `brew install --cask cursor` if Cursor were missing, but `brew` isn't installed. It turned out not to matter since Cursor was already present.

4. **Extension logins can't be automated.**
   Both the Claude Code and Codex extensions authenticate through a browser-based OAuth flow tied to personal accounts. There's no headless way to do this, so the sign-ins were completed manually from each extension's panel in Cursor.

## Verifying the install

```bash
$ /Applications/Cursor.app/Contents/Resources/app/bin/cursor --list-extensions --show-versions
anthropic.claude-code@2.1.191
anysphere.remote-ssh@1.1.4
openai.chatgpt@26.616.81150
```

---

# Research Project — AI-Powered SEO Content Production

The second half of this repo is a research project: pick one B2B-SaaS growth topic, find 10 genuine expert *practitioners*, collect their recent content via APIs/tools, and organize it to support a future playbook.

## Topic chosen
**AI-powered SEO content production** — how operators actually use AI to plan, produce, optimize, and distribute search content, and keep it visible as search shifts to AI answers (GEO/AEO). Chosen because it has the strongest set of practitioner voices with publicly collectible content and spans a full pipeline, so the material can support a real playbook rather than one repeated take.

## The 10 experts (and why)
Full rationale, links, and dated content in [`research/sources.md`](research/sources.md). Picked for being **practitioners, not commentators**, for covering **distinct stages** of the pipeline, and for a deliberate **range of stances** (AI-bullish operators + quality-first skeptics):

| Expert | Angle they own |
|---|---|
| Kevin Indig | Data-driven AI-search impact (Growth Memo) |
| Aleyda Solis | Curation + education (Crawling Mondays / SEOFOMO) |
| Mike King | GEO / "relevance engineering" (iPullRank) |
| Ross Simmonds | AI content distribution for B2B SaaS (Foundation) |
| Bernard Huang | AEO/GEO content optimization (Clearscope) |
| Ryan Law | AI content production on Claude Code (Ahrefs) |
| Julian Goldie | AI content automation at scale (300k+ YouTube) |
| Lily Ray | Quality / EEAT / "AI slop" critic (Amsive) |
| Eli Schwartz | Product-led SEO strategy lens |
| Koray T. Gübür | Semantic SEO / topical authority + AI agents |

## What was collected
- **11 YouTube transcripts (~101k words) across 7 experts** — keynotes, webinars, and long-form interviews (e.g. Mike King's SEO Week 2025 keynote, Bernard Huang's Clearscope webinars, Eli Schwartz on Lenny's, Aleyda's AI Search Optimization Roadmap). → [`research/youtube-transcripts/`](research/youtube-transcripts/)
- **4 article digests across 3 experts** (Ryan Law ×2, Koray Gübür, Kevin Indig) — paraphrased summaries + attributed short quotes + links. → [`research/other/`](research/other/)
- **8 LinkedIn posts across 3 experts** (Aleyda Solis, Lily Ray, Kevin Indig) — digested with verbatim opening lines, dates, links, and annotations. → [`research/linkedin-posts/`](research/linkedin-posts/)

## How (tools & methodology)
- **Sourcing:** web search + domain-filtered YouTube search to find *specific* practitioners and their real videos (not listicles), then verified recency/relevance.
- **Transcripts:** [`scripts/fetch_transcript.py`](scripts/fetch_transcript.py) using the free, no-key [`youtube-transcript-api`](https://pypi.org/project/youtube-transcript-api/) — **not** Supadata, which needs an account + API key I can't create. Titles/channels via YouTube's public oEmbed endpoint. [`scripts/collect.sh`](scripts/collect.sh) is a reproducible runner/manifest.
- **Written sources:** fetched and digested, never reproduced in full (copyright-safe).
- **LinkedIn:** collected **manually**, not scraped — LinkedIn gates posts behind login and forbids scraping in its ToS.

## Repo structure
```
research/
├── sources.md            # the 10 experts: who, why, links, dated content
├── linkedin-posts/       # one file per author (manually collected)
├── youtube-transcripts/  # one folder per author, one file per video (7 experts, 11 files)
└── other/                # article digests, podcasts, honorable mentions
scripts/
├── fetch_transcript.py   # no-key YouTube transcript → Markdown
└── collect.sh            # reproducible collection manifest
```

## Honest status & gaps
- **YouTube IP rate-limit:** after ~11 fetches YouTube began returning `IpBlocked`. Five queued videos (Koray ×2, Ryan Law ×2, Lily Ray ×1) are pending **backfill** — re-running `scripts/collect.sh` once the block lifts completes them. Koray and Ryan Law are already represented via written digests, so no expert is missing.
- **LinkedIn posts:** in progress, collected manually (paste-in).
- **Coverage:** all 10 experts now have collected material (7 via transcripts, 3 via written digests). Kevin Indig's Growth Memo is partly paywalled, so he's digested from a free Search Engine Land piece carrying his own data.
- **LinkedIn:** post bodies are login-gated in general, but public *share-links* (provided manually) proved fetchable — so Aleyda/Lily/Kevin posts are filed (one Aleyda post stayed walled, kept as a reference). Dates were decoded from the activity IDs. **Two submitted profiles were name-collisions and rejected:** `rossmsymons` is Ross **Symons** (AI-video creator), not Ross Simmonds; `michael-king-3358bbaa` is a private-equity exec, not Mike King of iPullRank. Correct profiles pending.

*Living research base — commits are incremental by design.*
