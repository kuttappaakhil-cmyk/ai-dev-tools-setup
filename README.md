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
- [ ] **2b. Log in to Claude Code** — done manually in Cursor (sidebar → Claude Code → Sign in with Anthropic account). *This is a personal OAuth sign-in and cannot be scripted.*
- [x] **3. Add the Codex extension** — installed `openai.chatgpt` v26.616.81150.
- [ ] **3b. Log in to Codex** — done manually in Cursor (sidebar → Codex/ChatGPT → Sign in with OpenAI account). *Same as above — interactive sign-in.*
- [x] **4. Create a public GitHub repository** — this repo, created with `gh`.
- [x] **5. Open the repository in Cursor.**
- [x] **6. Create this README.md.**
- [x] **7. Commit and push to GitHub.**
- [ ] **8. Reply to the originating email** with the link to this README.

> The two **login** boxes are intentionally left unchecked above because they are interactive sign-ins performed by hand in Cursor's UI — they're done outside the scripted steps, against personal Anthropic and OpenAI accounts.

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
