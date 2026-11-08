# The slop list

The patterns language models fall back on when they name things, with the points each one adds to a name's slop score. A name that scores 40 or more is crossed out.

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

Slop list version 595ca8c, generated from the rules used by Refrain, the name generator at https://antislop-namer.smaffan21.workers.dev. MIT licence.
