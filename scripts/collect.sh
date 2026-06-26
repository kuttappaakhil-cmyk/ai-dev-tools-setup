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

# --- Aleyda Solis — Orainti / Crawling Mondays ---
run BjyF_4UhoOM --author aleyda-solis       # The AI Search Optimization Roadmap
run qHXh09fnRcE --author aleyda-solis       # SEO Reloaded: Old rules in the new AI world

# --- Mike King — iPullRank ---
run Bs6-ROULCLk --author mike-king          # The Brave New World of SEO (SEO Week 2025 keynote)
run pQLivtcqCZs --author mike-king --published 2025-05-27   # Relevance Engineering / Query Fan Out (Page 2)

# --- Eli Schwartz — Product-Led SEO ---
run Z71yGshPTwk --author eli-schwartz       # Rethinking SEO in the age of AI (Lenny's)

# --- Lily Ray — Amsive / Algorythmic ---
run 2nJkT8zOzcM --author lily-ray           # GEO, AEO, LLMO: Fact from Fiction (MozCon 2025)
run UDexUcyPC04 --author lily-ray           # AI overviews, AI content and E-E-A-T

# --- Koray Tuğberk Gübür — Holistic SEO ---
run 81pe-YM9iRI --author koray-gubur        # AI-Powered Semantic SEO
run pIKfKowzauQ --author koray-gubur        # How Topical Authority SEO Works

# --- Ryan Law — Ahrefs ---
run D7LBx8RFOcQ --author ryan-law           # AI Writing at Scale: Ahrefs Workflow
run mL1W1SMtTT4 --author ryan-law --published 2025-10-01   # How to Win in AI Search (Real Data, No Hype)

# NOTE: YouTube IP-rate-limits bursts; some fetches above may report "IpBlocked".
# Re-run later (block is temporary) to backfill any that were skipped.
