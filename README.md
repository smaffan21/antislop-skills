# Anti-slop naming skills

Ask a model to name a habit tracker and you get Habitly, Streakify, Lumora or NexHabit: the same endings and roots it gives everyone. These files teach an AI agent or a custom GPT to name things without them.

They come from [Refrain](https://antislop-namer.smaffan21.workers.dev), a name generator that crosses out names that sound AI-generated. The rules here are the same ones the site uses: 14 endings, 36 roots and 9 habits, each worth a number of points. A name that scores 40 or more is crossed out.

## What's here

| Path | What it is |
| --- | --- |
| `skills/anti-slop-namer/` | Names a product. Writes a one-line brief, 40 candidates across seven strategies, scores each one, crosses out the slop, checks the .com and shows the 12 that survive with what each one means. |
| `skills/anti-slop-check/` | Scores a name you already have from 0 to 100 and lists every rule that fired. Works on a list too. |
| `gpt/instructions.md` | The same naming process for a custom GPT (4,672 characters, under the 8,000 limit). |
| `gpt/knowledge/slop-list.md` | The slop list, to upload as GPT knowledge. |
| `gpt/openapi.yaml` | An action schema for the free scoring API. |
| `install.sh` | Downloads the two skills into your skills folder. |

## Install the skills

Claude Code, for every project (`~/.claude/skills`):

```sh
curl -fsSL https://raw.githubusercontent.com/smaffan21/antislop-skills/main/install.sh | sh
```

Codex (`~/.agents/skills`). Restart Codex afterwards:

```sh
curl -fsSL https://raw.githubusercontent.com/smaffan21/antislop-skills/main/install.sh | sh -s -- --codex
```

One project only, or any other folder:

```sh
curl -fsSL https://raw.githubusercontent.com/smaffan21/antislop-skills/main/install.sh | sh -s -- --dir=.claude/skills
```

The script only downloads three text files. Read it first if you like.

Without the script, copy a folder from `skills/` into `~/.claude/skills/`, `.claude/skills/` in a repo, `~/.agents/skills/` or `.agents/skills/`. In Cursor, Windsurf, a chat window or any agent without a skills folder, paste `SKILL.md` into the chat or your rules file.

Then ask in plain words: "Name my app: a habit tracker for people who keep breaking streaks." or "Does Lumora sound like an AI named it?"

## Set up the custom GPT

1. In ChatGPT, open **Explore GPTs**, then **Create**, then the **Configure** tab.
2. Paste `gpt/instructions.md` into Instructions.
3. Upload `gpt/knowledge/slop-list.md` under Knowledge, and turn on web search so it can check the .com.
4. Optional: under Actions, choose **Create new action**, then **Import from URL**, and paste the schema URL below. Authentication: none. The GPT then scores names with the API instead of doing the arithmetic itself.

```
https://antislop-namer.smaffan21.workers.dev/skill-files/gpt/openapi.yaml
```

ChatGPT asks for a privacy policy before a GPT with an action can be shared publicly. Use https://antislop-namer.smaffan21.workers.dev/privacy.

The instructions also work in Claude Projects, Gemini Gems or any chat app that takes custom instructions.

## The scoring API

The same rules as a free endpoint. No model calls, no names stored, open to any origin.

```sh
curl -s https://antislop-namer.smaffan21.workers.dev/api/v1/score -H "content-type: application/json" -d '{"name":"Lumora","description":"a habit tracker"}'
```

```json
{
  "name": "Lumora",
  "score": 55,
  "band": "mid",
  "blocked": true,
  "reasons": [
    "Ends in -ora, a common AI ending (+55)"
  ]
}
```

Names must be 2 to 40 characters, descriptions up to 300. `gpt/openapi.yaml` has the full shape.

## Where the rules come from

These files are generated from the rules in Refrain, so the list here always matches the site. Slop list version 595ca8c. Found a pattern that should be on the list? Open an issue.

MIT licence, see `LICENSE`.
