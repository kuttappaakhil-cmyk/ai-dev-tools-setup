#!/usr/bin/env bash
# Reproducible YouTube transcript collection for the AI-SEO research project.
# Each entry is a real talk / webinar / interview from one of the 10 experts
# in research/sources.md. Re-run any time: `bash scripts/collect.sh`
#
# Setup (once):  python3 -m pip install --user youtube-transcript-api
set -u
HERE="$(cd "$(dirname "$0")" && pwd)"
PY="$HERE/fetch_transcript.py"
run(){ python3 "$PY" "$@"; }

# --- Ross Simmonds — Foundation / Distribution.ai ---
run VXxFJAg7YJw --author ross-simmonds --published 2025-10-08   # Content Distribution in the Age of AI (Zero Click)

# --- Bernard Huang — Clearscope ---
run 0D09Qu0xMds --author bernard-huang     # Webinar: The Future of SEO Content
run ZytMamXMG0M --author bernard-huang     # Rank SEO Content in the Era of Generative AI
run f84ovVChEh4 --author bernard-huang     # AI-driven SEO revolution: future of discoverability

# --- Julian Goldie — Goldie Agency ---
run HiivXpe2Slk --author julian-goldie     # How to Automate SEO with AI in 2025

# More experts appended as video IDs are confirmed (Aleyda, Mike King,
# Eli Schwartz, Lily Ray, Koray, Ryan Law).
