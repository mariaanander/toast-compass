# Toast Compass

Toast Compass is an internal customer research learning system for Toast's R&D team. It acts as a warm, opinionated research thought partner called **Compass**, guiding product managers, designers, engineers, PMMs, and leadership through the full end-to-end research journey — from figuring out what to study all the way through synthesis and share-out.

---

## How to use it

**Inside Claude Code — the primary way:**
```
/compass
```
That's it. No installs, no API keys, no terminal. Just type `/compass` in Claude Code and you're in.

**The files live at:** `~/.claude/skills/compass/`

---

## The Coordinator — the core of the system

Every conversation starts with the **Coordinator** (`coordinator.md`). The Coordinator is Compass — a warm, opinionated research thought partner. It reads what someone needs, asks probing questions to understand their situation, and routes them to the right specialist agent with the right context already loaded.

The Coordinator also handles two things directly without routing:
- **Programs & Events questions** (Compass Coaches, workshops, Triad Learning Sprint, Seat at the Table, Virtual Customer Panels)
- **One-off research questions** ("What makes a good screener?" / "How many participants do I need?")

---

## The seven agents

| Agent | File | What it does |
|---|---|---|
| Coordinator | `coordinator.md` | Front door, routing, Programs & Events, one-off questions |
| Agent 1 | `agent-1.md` | Sharpens the learning objective, maps to discovery stage, recommends the right method |
| Agent 2 | `agent-2.md` | Sets up moderated recruitment — User Interviews Panel, Restaurant Research Hub, Targeted Outreach, or Test Kitchen |
| Agent 2b | `agent-2b.md` | **Designers only.** Builds the unmoderated study in Maze — prototype test or card sort. Ends when the study is live. |
| Agent 2c | `agent-2c.md` | **Designers only.** Recruits participants into the live Maze study — Restaurant Research Hub (unmoderated), Targeted Outreach, or Maze Panel. |
| Agent 3 | `agent-3.md` | Writes the discussion guide, assigns triad roles, sets up Chorus recording, pre-session checklist and tips |
| Agent 4 | `agent-4.md` | Analyzes notes/transcripts, identifies themes, writes insight statements, drafts the Slack share-out, closes the discovery loop |

---

## Two routing paths

**Moderated path** — PMs, Designers, Engineers, PMMs, Leadership:
```
Coordinator → Agent 1 → Agent 2 → Agent 3 → Agent 4
```

**Unmoderated path** — Designers only:
```
Coordinator → Agent 1 → Agent 2b → Agent 2c → Agent 4
```

---

## Key role restrictions

| Rule | Detail |
|---|---|
| **Agent 1 is always first** | No one skips it. A confirmed learning objective is what everything downstream depends on. |
| **Maze = Designers only** | Never route PMs, Engineers, PMMs, or Leadership to Agent 2b or 2c. |
| **PMMs = Targeted Outreach only** | PMMs can use all agents except 2b and 2c. For recruitment, Targeted Outreach is the only path — no Restaurant Research Hub or User Interviews Panel. |

---

## Files in the skill folder

All files live at `~/.claude/skills/compass/`:

```
~/.claude/skills/compass/
├── SKILL.md          ← the skill entrypoint (do not rename)
├── coordinator.md
├── agent-1.md
├── agent-2.md
├── agent-2b.md
├── agent-2c.md
├── agent-3.md
└── agent-4.md
```

The originals (with their long names) live in this `Compass Agent` folder on your Desktop. The skill copies are in `~/.claude/skills/compass/`.

---

## Editing the system prompts

To change how any agent behaves, edit the file in `~/.claude/skills/compass/`. Changes take effect immediately — no restart needed. 

If you update the original `.md` files in the `Compass Agent` folder on your Desktop, re-copy them to the skill folder:

```bash
cp "/Users/maria.scholl/Desktop/Compass Agent/toast-compass-coordinator.md" ~/.claude/skills/compass/coordinator.md
# repeat for whichever agent you updated
```

---

## Sharing with teammates

Each teammate needs to:
1. Copy the `~/.claude/skills/compass/` folder to their own `~/.claude/skills/compass/`
2. Type `/compass` in Claude Code

No API key, no Python, no AWS credentials setup required. Claude Code handles all of that.

---

## Troubleshooting

**`/compass` doesn't appear in Claude Code**
→ Check that `~/.claude/skills/compass/SKILL.md` exists on your machine

**Compass stops following the right agent's instructions mid-conversation**
→ Re-invoke `/compass` to reload the skill into the conversation

**An agent file is missing**
→ Re-copy it from the `Compass Agent` folder on your Desktop

---

*Toast Compass — built by Design and Product Ops*
*Questions: #compass on Slack or reach out to @Maria Anander*
