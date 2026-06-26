# Ryan Law (Ahrefs) — article digests

Supporting written sources for the playbook. Summaries are paraphrased; short quotes are attributed. Full articles at the links. (Collected because Ryan Law's flagship pieces are written, and YouTube rate-limited his video at collection time.)

## How I Do Content Engineering with Claude Code
- Source: https://ahrefs.com/blog/how-i-do-content-engineering-with-claude-code/
- Published: 2026-04-28
- Why it matters: a real, production AI-content pipeline built on the *same toolchain as this repo* (Claude Code).

Key points:
- **23 modular "skill" files**, one per editorial step (keyword research, gap analysis, outlining, drafting), chained by a main `blog-pipeline` skill → publish-ready draft in **6–12 minutes**.
- Mirrors Ahrefs' **existing human editorial process** — the expertise lives in the prompts/instructions.
- Each step writes its **own output file** (outline, research primer, draft) so problems are easy to diagnose and re-run in isolation.
- Integrates the **Ahrefs MCP** to pull real SEO metrics/SERP data instead of hallucinations.
- **Front-loads human direction** (angles, sub-topics, product features) rather than heavy end editing.
- Uses Anthropic's **skill-creator** to A/B test which instructions actually improve output and trim bloat.
- Results so far: ~**15 new articles / ~30 updated**; big improvement over a prior ChatGPT-based, manual-heavy system.

> "Small amounts of expert direction provided at the start are vastly more effective than lots of human editing at the end."

## AI Content Is Short-Term Arbitrage, Not Long-Term Strategy
- Source: https://ahrefs.com/blog/ai-content-is-short-term-arbitrage/
- Published: 2024-02-06
- Why it matters: the counterweight to "scale AI content" hype — keeps a playbook honest.

Key arguments:
- **Penalty risk** at scale (cites an "SEO heist" that hit 700k traffic, then was penalized to ~zero).
- LLMs **average existing info** → mediocre by default, no original research/experience.
- **Brand damage** when AI filler is a visitor's first impression.
- **Low commercial value** — tends to rank for low-intent, low-competition terms.
- **No moat** — zero barrier to entry; anyone can replicate.
- Forgettable content **doesn't convert**; trust does.
- Defensible alternatives: **original data, interviews, personal narrative.**

> "AI content is short-term arbitrage, not a long-term strategy."
