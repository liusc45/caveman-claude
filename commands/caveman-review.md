---
description: Caveman code review of the current diff — terse, actionable, no edits
argument-hint: "[git diff args, e.g. main..HEAD]"
allowed-tools: Bash(git diff:*), Bash(git log:*), Bash(git show:*)
---

Load the caveman-review skill rules.

Review the current diff in caveman mode. If `$ARGUMENTS` is empty, review all uncommitted changes against HEAD (run `git diff HEAD`); otherwise run `git diff $ARGUMENTS`. One line per finding: location, problem, fix. Use severity prefixes when mixed (`🔴 bug:` `🟡 risk:` `🔵 nit:` `❓ q:`). Don't write fixes, don't approve. Output comments ready to paste.
