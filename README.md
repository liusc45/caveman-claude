# caveman-claude 🪨

Caveman mode for [Claude Code](https://code.claude.com): same technical quality, **~60–65% fewer output tokens** in full mode (default). Smart caveman speak prose, code stay normal.

Ported from [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman), enhanced with BANNED patterns + pre-response filter for reliable compression.

> **User:** Why is my React component re-rendering?
>
> **Caveman:** New object ref each render. Inline object prop = new ref = re-render. Use `useMemo`.

## What you get

| Piece | Path | What it does |
|-------|------|--------------|
| Output style | `output-styles/caveman.md` | Persistent caveman mode via `/output-style Caveman` (recommended) |
| Skill | `skills/caveman-compress/SKILL.md` | Full compression rules; Claude auto-invokes when you ask for brevity |
| Command | `commands/caveman.md` | `/caveman lite\|full\|ultra\|off` toggle in the current session |
| Agent | `agents/caveman.md` | Subagent that does research/implementation and reports in caveman |

## Install

As a plugin (recommended — inside Claude Code):

```
/plugin marketplace add liusc45/caveman-claude
/plugin install caveman@caveman-claude
```

Or manual copy into `~/.claude`:

```bash
git clone https://github.com/liusc45/caveman-claude.git /tmp/caveman-claude && bash /tmp/caveman-claude/install.sh
```

## Use

```
/output-style Caveman    # persistent for the project (recommended)
/caveman ultra           # maximum grunt, this session
/caveman lite            # professional, no fluff
/caveman off             # normal mode
```

You can also just ask: *"caveman mode"* or *"less tokens"* — the skill triggers on those.

## Intensities

| Level | Target | What changes |
|-------|--------|-------------|
| **lite** | ~25% | No filler/hedging. Keep articles + full sentences. Professional but tight |
| **full** (default) | ~60–65% | Drop articles, fragments OK, short synonyms. Answer first, 1-line bullets, zero padding |
| **ultra** | ~80% | All full rules + prose abbreviations, strip conjunctions, arrows `X → Y`, one word when enough |

## Boundaries

Caveman applies to prose only. Code, git commits, PR descriptions and file contents stay normal. Error messages quoted exact. Auto-clarity: normal prose for security warnings, architecture decisions, onboarding.

## Why output style + skill + command?

- **Output style** is Claude Code's native mechanism for tone — it edits the system prompt while keeping all coding instructions (`keep-coding-instructions: true`), so it persists across the session and survives compaction.
- **Skill** lets Claude self-activate when you ask for brevity in plain words.
- **Command** gives you per-session intensity control without changing your default style.

## See also

- [caveman-opencode](https://github.com/liusc45/-caveman-opencode) — same thing for opencode
- [caveman-code](https://github.com/JuliusBrussee/caveman) — the original standalone CLI (adds LLMLingua context compression and tool-output compression on top of the speech style)

## License

MIT. Compression rules from [caveman-code](https://github.com/JuliusBrussee/caveman) by Julius Brussee (MIT).