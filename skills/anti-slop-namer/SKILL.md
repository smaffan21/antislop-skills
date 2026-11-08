---
name: anti-slop-namer
description: Names an app, startup, product or project without the patterns that make names sound AI-generated (Lumora, Nexify, HabitAI). Use when someone asks for name ideas, a brand name, a product name, or asks whether a name sounds like AI made it.
license: MIT
---

# Anti-slop namer

Ask a model to name a habit tracker and it reaches for the same endings and roots it gave everyone else: Habitly, Streakify, Lumora, NexHabit. This skill runs naming as a filtered process instead: understand the product, write many candidates across different strategies, score every candidate against a public list of slop patterns, cross out the slop, check the .com, and show the 12 that survive with a reason for each.

Follow the steps in order. Don't skip the scoring step: it is the point of the skill.

## 1. Understand the product

Read the description and write a one-line brief before naming anything.

- Fix obvious typos and shorthand. "sass" in a product description almost always means **SaaS**, not attitude. "ur" means "your". If a word could be read two ways, pick the reading that fits a product and say which one you picked.
- Name the category: habit tracker, invoicing SaaS, Discord bot, bakery, newsletter.
- Name the user: who uses it, and when.
- List 6 to 10 concrete concepts from the product's world: objects, actions, places, tools, the moment the user gets value. Use these as raw material. The adjectives in the description are not raw material.

Show the brief to the user first, in one line, for example: *Naming: a SaaS that generates brand names, for indie builders about to launch.* If the description is too vague to write a brief, ask one question and wait.

## 2. Write 40 candidates

Write 40 names. Use at least four of these strategies across the list, and don't let any one strategy take more than a third of it:

- **real word**: a dictionary word used in a fresh way (Notion, Slack, Linear)
- **compound**: two short concrete words joined (Dropbox, Mailchimp, Snowflake)
- **metaphor**: an object or idea from the product's world that stands for what it does (Anchor, Robinhood)
- **borrowed word**: a word from another language with a clear meaning (Lego, Asana)
- **verb**: an action the user takes (Hinge, Snap)
- **place or person**: a place, figure or name that fits the product's story (Amazon, Tesla, Ford)
- **coined**: an invented word that is still easy to say and spell (Kodak, Hulu, Zillow)

For each candidate write:

- the name
- one plain sentence, at most 18 words, on why it fits this product
- its strategy

Every name should be easy to say, easy to spell after hearing it once, and at most two words. A name with no real reason behind it doesn't make the list.

### Timely names

Some products ride a term people say and search right now: "AI slop", "vibe coding", "brainrot". When the product does, add 2 names built straight on that term, such as Antislop or Slopless for a tool that keeps AI slop out. They work the way Grammarly or Cursor did: the name matches what people already say. Mark their strategy as timely. Only use a term that is genuinely current and central to the product; most products have none, and then you skip this.

## 3. Cross out the slop

Score every candidate with the rules in the slop list below. Cross out any name that scores 40 or more.

Then cross out, whatever the score:

- **Literal restatements.** Names that just glue the description's own words or close synonyms together. For "a habit tracker": HabitTracker, TrackHabit, DailyHabit. Test: if someone could guess the name from the sentence alone, it's too literal. Timely names are the exception: a current term the product rides is not a restatement, though the slop list still applies to them.
- **Mood names.** Names that echo the tone of the wording instead of the product. "An anti AI-slop name for ur sass generator" is about a SaaS, so names like Backtalk or Clapback miss.
- **Taken identities.** The name of a well-known company or product.
- **Bad meanings.** Words you know are rude or unfortunate in a major language.

Keep a list of what you crossed out and why. You'll show some of it.

## 4. Check the .com

For each surviving name, ask the .com registry directly:

```sh
curl -s -o /dev/null -w "%{http_code}" https://rdap.verisign.com/com/v1/domain/NAME.com
```

- **404**: no registration found, the .com is free.
- **200**: taken.
- Anything else: unknown. Say "not checked" and move on.

Use the name in lowercase with spaces and punctuation removed. The registry can't see domains listed for sale on aftermarkets, so "taken" may still be buyable. If you have no way to make web requests, mark every .com as "not checked". Never guess.

## 5. Pick and present 12

Order the survivors by slop score, lowest first. Between names in the same band, a free .com goes first. Take 12, with no more than 4 from one strategy.

Present them as a table:

| Name | Meaning | Strategy | Slop score | .com |
| --- | --- | --- | --- | --- |
| Harbor | Where finished work waits safely before it ships | metaphor | 0 | taken |

Under the table:

- Show 3 to 5 crossed-out names with the rule that caught each one, for example: ~~Streakify~~ ends in -ify (+55).
- Say how many of the 40 were crossed out. Count them; don't estimate.
- Offer to refine: more like one of the names, shorter, keep a root, a different strategy, avoid a letter.

Never present a name you crossed out as a suggestion.

## Scoring an existing name

When someone asks whether a name sounds AI-generated, or wants a name checked:

1. Score it with the rules below, including the description if they gave one.
2. Reply with the score, the band, whether it would be crossed out, and each rule that fired with its points.
3. If it scores 40 or more, explain what to change (drop the ending, swap the root for a concrete word) and offer three alternatives that score under 25.
4. Roast the pattern, never the person who picked the name.

The same rules run as a free API, which is useful for checking your arithmetic:

```sh
curl -s https://antislop-namer.smaffan21.workers.dev/api/v1/score -H "content-type: application/json" -d '{"name":"Lumora","description":"a habit tracker"}'
```

## The slop list

### Endings

| Ending | Points |
| --- | --- |
| -ify | 55 |
| -ly | 45 |
| -ora | 55 |
| -ara | 45 |
| -ium | 40 |
| -io | 40 |
| -iq | 45 |
| -ia | 30 |
| -ex | 30 |
| -sy | 30 |
| -oo | 25 |
| -eo | 25 |
| -yx | 40 |
| -za | 25 |

### Roots

| Root | Points |
| --- | --- |
| nex | 50 |
| lumi | 50 |
| lumen | 45 |
| synth | 45 |
| neo | 35 |
| zen | 35 |
| flux | 40 |
| nova | 45 |
| vibe | 35 |
| aura | 40 |
| verse | 35 |
| mind | 30 |
| genius | 40 |
| sphere | 40 |
| hub | 40 |
| stack | 25 |
| sync | 35 |
| omni | 40 |
| quant | 30 |
| cogni | 45 |
| intelli | 50 |
| smart | 40 |
| pulse | 35 |
| spark | 35 |
| vita | 30 |
| flow | 30 |
| wave | 25 |
| core | 25 |
| nimbus | 35 |
| aether | 40 |
| zenith | 40 |
| apex | 40 |
| elev | 35 |
| vertex | 40 |
| orbit | 25 |
| quest | 25 |

### Habits

| Habit | Points | How to test it | Example |
| --- | --- | --- | --- |
| "AI" or "GPT" glued on | 60 | Uses the name as written: starts with "AI", starts with "Ai" plus a capital, ends in "AI" or "Ai", or contains "GPT". | TallyAI |
| Dropped vowel, Flickr style | 45 | More than 4 letters and ends in "r" right after a consonant (y counts as a vowel; "rr" doesn't count). | Tumblr |
| Letters swapped to look different | 30 | Ends in "z" right after a consonant other than s, starts with "kl" or "kr", or has more than 4 letters and ends in "x" right after a consonant. | Trackz |
| Hard to say | 30 | Four or more consonants in a row (y counts as a vowel). | Strngth |
| Too long | 25 | More than 13 letters. | Mountaintopgrove |
| Generic add-on word | 40 | Uses the name as written: split it at capital letters and spaces; if there are two or more parts and one is a generic add-on (list below), it counts. | TallyBuddy |
| Echoes the description | 25 | Only with a description. Take its words of 5+ letters (skipping filler like "people" or "something"). Counts once if the name contains a word's first 6 letters and is longer than that word. | Habitsnest (for "track daily habits") |
| More than two words | 40 | Three or more words. | One Two Three |
| Unfortunate meaning in another language | 100 | The whole name, or one of its words, is a rude or grim word in a major language (Peklo means "hell" in Czech). Check the name in the top languages your users speak; this always blocks. | Peklo |

Generic add-on words: app, labs, hq, pro, buddy, mate, pal, ly, io, ai, gpt, bot, kit, hub, squad, wise.

### How to score a name

Work on the name in lowercase with everything except a to z removed ("Nex Habit!" becomes "nexhabit"), except where a habit says it uses the name as written. Add up the points:

1. **Ending.** Check the endings table from top to bottom and count only the first match, so a name gets at most one ending. It only counts when the name has at least 3 more letters than the ending. "-ly" only counts when the letter before it is a consonant other than "l": Habitly counts, Tally and Holly don't.
2. **Roots.** Count any root that appears anywhere in the name. At most two roots count, the first two in table order.
3. **Habits.** Add each habit that applies, once.
4. **Total.** Add everything up and cap it at 100.

A name is **crossed out** when it scores 40 or more, or has fewer than 3 letters.

Bands: **low** under 25, **mid** 25 to 59, **high** 60 and up.

A low score means the name avoids the patterns models fall back on. It doesn't prove the name is good: it still needs a real meaning and has to survive being said out loud.

### Worked examples

| Name | Score | Result | Why |
| --- | --- | --- | --- |
| Lumora | 55 | crossed out | Ends in -ora, a common AI ending (+55) |
| Nexify | 100 | crossed out | Ends in -ify, a common AI ending (+55); Uses "nex", a root AI reaches for (+50) |
| Habitly | 45 | crossed out | Ends in -ly, a common AI ending (+45) |
| SynthHub | 100 | crossed out | Uses "synth", a root AI reaches for (+45); Uses "hub", a root AI reaches for (+40); Four consonants in a row: hard to say (+30); Generic add-on word "hub" (+40) |
| TallyAI | 60 | crossed out | Has "AI" glued on (+60) |

The same list is in `slop-list.md` next to this file.

Slop list version 595ca8c, generated from the rules used by Refrain, the name generator at https://antislop-namer.smaffan21.workers.dev. MIT licence.
