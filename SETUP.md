# Toast Compass — Setup Guide

Get up and running in about 2 minutes. No installs, no API keys.

---

## What you need

- Claude Code installed on your machine (desktop app or VS Code extension)
- That's it.

---

## Step 1 — Get the skill files

Ask @Maria Anander (or whoever shared this with you) for the `compass-skill` folder, or copy it directly from:
```
~/.claude/skills/compass/
```
on a machine that already has it set up.

The folder should contain these files:
```
SKILL.md
coordinator.md
agent-1.md
agent-2.md
agent-2b.md
agent-2c.md
agent-3.md
agent-4.md
```

---

## Step 2 — Put the files in the right place

On your machine, the files need to go here:
```
~/.claude/skills/compass/
```

In your terminal:

```bash
mkdir -p ~/.claude/skills/compass
```

Then copy all 8 files into that folder.

---

## Step 3 — Use it

Open Claude Code and type:
```
/compass
```

Compass will greet you and ask what you're trying to figure out.

---

## That's it

No Python. No API key. No AWS setup. Claude Code handles everything.

---

## Troubleshooting

**`/compass` doesn't show up**
→ Make sure `SKILL.md` is in `~/.claude/skills/compass/` (not inside a subfolder)

**Something feels off mid-conversation**
→ Type `/compass` again to re-load the skill

**Questions**
→ #compass on Slack or reach out to @Maria Anander
