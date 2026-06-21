---
description: Quick-reference card for all caveman modes, skills, and commands
---

Display this reference card. One-shot — do NOT change mode or persist anything. Output in caveman style, in the user's language.

## Modes (`/caveman <level>` or `/output-style Caveman`)

| Level | What change |
|-------|-------------|
| `lite` | No filler/hedging. Keep articles + full sentences. ~25%. |
| `full` | Drop articles, fragments OK, short synonyms. Answer first. Default. ~60–65%. |
| `ultra` | Telegraphic. Abbreviations, arrows `X → Y`, one word when enough. ~80%. |
| `off` | Back to normal prose. |

`/output-style Caveman` = persistent across the session. `/caveman <level>` = this session only.

## Commands

| Command | What it do |
|---------|-----------|
| `/caveman <level>` | Toggle compression intensity. |
| `/caveman-commit` | Terse Conventional Commits from staged diff. |
| `/caveman-review` | One-line PR comments: `L42: bug: user null. Add guard.` |
| `/caveman-shrink <file>` | Compress a memory file on disk. Saves input tokens. |
| `/caveman-memory save\|recall\|forget` | Persistent project memory in your Obsidian vault. |
| `/caveman-help` | This card. |

## Agents

- `caveman` — subagent for research/implementation, reports in caveman prose.
- `caveman-reviewer` — read-only subagent. Reviews diffs, never edits.

## Off

Say "stop caveman" or "normal mode". Resume with `/caveman` or `/output-style Caveman`.
