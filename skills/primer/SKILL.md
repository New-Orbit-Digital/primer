---
name: primer
description: Use when someone asks for a primer, briefing, crash course or research rundown on a topic, person, organization, book or idea, or when another skill or automation asks for one or several. Asks what it's for and what to cover, researches, and delivers a consistently formatted primer as an EPUB.
---

# Primer

Turns "primer on X" into a fair, well-sourced primer, written in the same structure every time so it is easy to read, hear and remember. The output is always an EPUB, so it can be read in any e-reader or listened to in any read-aloud app.

Every run goes through six stages in order: Intake, Research, Write, Build, Check, Deliver. Set up a task list with one item per stage when your environment has one.

## 0. Who is asking

A primer can be requested by a person in conversation, or by a caller such as another skill, a scheduled task or an automation.

- A caller may supply any of: one or more topics, the purpose, the coverage picks, the depth, source files, and a title for the finished EPUB. Never ask for anything that was supplied.
- If something is missing and no one is there to answer, use the defaults: purpose from context, otherwise "Personal curiosity"; Conversation depth. State the defaults you used in each primer's verification note.
- Several topics in one run is a **batch**. Research and write each topic as its own primer, then build them together into one EPUB (see Build).

## 1. Intake

1. **Read the request first.** It may include a brain dump: what the person already knows and why they care. Use it to judge their familiarity. Skip basics they already have, and correct any misconception in the Debates section, by reference and warmly.
2. **Use what you already know about the person.** If your environment holds context about them (memory, a profile, project instructions or files), use it to tailor the purpose options, the examples and the practical chapter. For example, if you know they run a business, name it in the work option. Never ask for this context and never invent it. If you know nothing, stay generic.
3. **Ask one round of questions, at most two, together.** Use a multiple-choice question tool if you have one; otherwise a numbered list the person answers with numbers.
   - **Purpose** (pick one). Put the likeliest first. Skip this question when the request already says what it is for.
     - Work or a business venture
     - Meeting or working with someone
     - A decision I'm making
     - Personal curiosity
   - **Coverage** (pick any). Three options specific to the subject, plus "Just the essentials." Examples:
     - Person: Background and career · Their work and ideas · Current role and recent news
     - Topic: How it works · History · Current debates
     - Organization: Mission and history · Programs and people · Current situation
     - Book: The core argument · The frameworks and terms · Critiques and alternatives

   Do not ask about length or depth. The number of coverage picks sets the depth, and anything typed beyond the menu counts as one more pick.
4. **Set the depth from the picks.** Assume about 165 spoken words per minute.

| Picks | Depth | Listening time | Words per primer |
|---|---|---|---|
| Just the essentials | Brief | about 5 minutes | 600–900 |
| 1–2 | Conversation | about 10–12 minutes | 1,500–2,000 |
| 3 or more | Research | 25–35 minutes | 4,000–5,500 |

If the person skips the questions or says "just do it," use the defaults above and say so in one line.

## 2. Research

**Trust order.**
1. The subject's own primary material: official sites, CVs, institutional pages, papers, government data, and for a book, the book itself.
2. Reputable reporting and reference works.
3. Secondary summaries.

Never use forums or content farms for facts. Always search anything about the present, such as roles, status, current programs, prices or laws, even if you think you know the answer.

**Books.** When the person has the book as a file (attached, in a folder you can reach, or at a library location your context gives), its text is the primary source. Extract the text (for example `pandoc book.epub -t plain`), read it, and cite chapters instead of URLs. Use outside sources only for the Debates section, and cite them. Without a copy, build from secondary sources and say so in the primer's first line.

**How much.** Brief: 3–6 searches. Conversation: 6–12. Research: 15 or more, spread across the coverage picks. At Research depth, and for batches, split the work into threads (one per coverage pick, or one per book) and run them as parallel research agents if you can. Brief each agent:

> Research [thread] about [subject] for a plain-language listening primer. Start with [known primary sources]. For each item return what it is, the date, the source (URL, or chapter for a book), and 2–4 key facts with specific numbers. Paraphrase everything; at most one verbatim quote per source, under 15 words. Flag anything uncertain, any conflict between sources (give both values), and any page you could not open. Return structured markdown with a source on every item.

**The fact sheet.** Before writing, condense the findings into one list of claims, each with its source. Keep three side lists: conflicts between sources (both values), items you could not verify, and pages you could not open. Nothing goes into the primer that is not on the fact sheet.

**Flag surprises right away.** If research shows the request rests on a wrong premise, such as a person who has left a role, an organization that has split, or a book that argues something different from what the person assumes, tell them immediately and keep working. Repeat it at the top of the primer.

**Be fair.** Contested subjects get a Debates section that names who argues each side, the sources each side would itself cite, and where the evidence lands. Treat every political side with the same effort and tone.

## 3. Write

### The section library

Each primer uses these sections in this exact order. Include a section only where its depth column says so.

| # | Section | Brief | Conversation | Research |
|---|---|---|---|---|
| 1 | Title and a one-sentence summary line | yes | yes | yes |
| 2 | How to use this primer (2 sentences: length and order) | no | yes | yes |
| 3 | The one-minute version | yes | yes | yes |
| 4 | Timeline (only when dates matter) | no | if useful | yes |
| 5 | Core ideas, numbered | 3 | 5 | up to 8 |
| 6 | Primer cards, grouped by theme, in date order within each theme | 2–3 | 5–8 | as many as needed |
| 7 | Debates and misconceptions | yes | yes | yes |
| 8 | Practical chapter (set by purpose, below) | if purpose has one | if purpose has one | if purpose has one |
| 9 | Terms you will hear (at most 10) | no | yes | yes |
| 10 | Further reading (3–6 items, each with one line on why) | yes | yes | yes |
| 11 | Go deeper (2–4 follow-up topics) | yes | when there is no practical chapter | when there is no practical chapter |
| 12 | Sources and verification | yes | yes | yes |

### The practical chapter

The purpose decides it:

- **Work or a business venture:** "For your work" (use the business's name in the title if you know it). Two to four concrete applications. Mark them as application, not the source's claim.
- **Meeting or working with someone:** "If you meet them." What to ask, common ground, and what to avoid.
- **A decision I'm making:** "For your decision." The questions that decide it and where the evidence lands on each. No recommendation unless asked.
- **Personal curiosity:** no practical chapter; end with Go deeper instead.

Always address the reader as "you." Never refer to them by name or in the third person.

### Card template

Every card is a short block with a heading and the same labels in the same order, each label in bold followed by a colon:

```
#### [Card title]
*[Year or date range] · [Source, venue or setting]*

**In one line:** what it is and why it matters.
**Question:** (or **What it is:**) the question it answers, or what it is.
**Data:** (or **Details:**) what it is based on: sources, numbers, setting.
**Found:** (or **Key points:**) the main findings or ideas, with specific numbers.
**In conversation:** one sentence the reader could say aloud.
```

- Each card runs to 150 words or fewer.
- Minor items share one cluster card with two labels: **What is in it:** and **Common thread:**.
- A book gets its own full card. A series of articles or minor papers can share a cluster card. In a book primer, cards cover the book's chapters or frameworks.

### Writing rules (everything will be read aloud)

- Conclusion first: context, then the headline, then the detail.
- Short, direct sentences in active voice. No em-dash asides or long parentheticals.
- Spell out abbreviations on first use. Round numbers the way people say them ("about a quarter of a million dollars") unless the exact figure is the point.
- No tables or charts inside a primer, and no bare URLs. Sources appear as linked titles.
- At most one quotation per source, under 15 words. Paraphrase everything else. For old texts, quote only public-domain translations.
- Separate what sources say from your own inference, and label inference as such.
- Every label and year is separated from the next word by a space or a colon.

## 4. Build the EPUB

Write each primer as an HTML fragment in a working folder, one file per primer, named in reading order (`01-slug.html`, `02-slug.html`). Inside each fragment:

- `<h1>` for the primer's title (exactly one per primer),
- `<h2>` for each section,
- `<h3>` for theme groups and `<h4>` for card titles,
- labels as `<p><strong>In one line:</strong> text</p>`,
- timeline items as `<li><strong>2016:</strong> text</li>`,
- sources as `<li><a href="URL">Title</a>, publisher, date</li>`.

A **single primer** builds from its one fragment. A **batch or series** builds from all fragments in order, each primer becoming one chapter. For a series, add `00-guide.html` first: a short guide (what the series is, the order, total listening time).

Build with this script, run from the working folder. Set `TITLE` (the primer's title, or the series or batch title) and `SLUG`:

```bash
python3 -I - <<'EOF'
import glob, re
parts = []
for f in sorted(glob.glob('[0-9][0-9]-*.html')):
    s = open(f, encoding='utf-8').read()
    s = re.sub(r'<style.*?</style>|<script.*?</script>|<svg.*?</svg>', '', s, flags=re.S)
    parts.append(s)
open('book.html', 'w', encoding='utf-8').write(
    '<!doctype html><html><head><meta charset="utf-8"><title>Primer</title></head><body>\n'
    + '\n'.join(parts) + '\n</body></html>')
EOF
printf 'body{font-family:serif;line-height:1.5}\n' > min.css
pandoc book.html -f html -t epub3 -o "SLUG.epub" \
  --metadata title="TITLE" --metadata lang=en-US \
  --split-level=1 --toc --toc-depth=2 --epub-title-page=false --css=min.css
```

`--split-level=1` keeps each primer as one internal file, which roughly halves the file size compared with splitting at every section, and the table of contents still lists every section.

Keep the fragments until the run is over. If someone asks for one primer from a batch on its own, build it from its fragment with the same script.

## 5. Check before delivering

Fix any failure before sending.

- The sections appear in the fixed order, and every card uses the same labels.
- Each primer's word count is within its depth target.
- Every number and date in the primer is on the fact sheet with a source.
- The HTML is well formed: every tag that opens also closes.
- The EPUB opens: `unzip -l SLUG.epub` lists one text file per primer, and the table of contents (`unzip -p SLUG.epub EPUB/nav.xhtml`) lists every primer and its sections.
- The Sources and verification section is complete.

### Sources and verification section

End every primer with:

1. **Sources:** each source used, as a linked title.
2. **Verification:** what the claims were checked against; what could not be verified; where sources disagreed, with both values; any defaults used at intake; and today's date.

## 6. Deliver

- Give the EPUB to the person as a file in the conversation. Save it to a folder as well only when the person or caller asks for that.
- If you cannot run commands, give the primer in the conversation instead, as text with the same headings, and say the EPUB could not be built.
- Final reply, kept short:
  1. One line on what was made and its total listening time.
  2. The top two or three items from the not-verified list.
  3. One real next step, if there is one.
- For a caller, also return one line per primer: its title, listening time and file name, so the caller can record it.

## Follow-ups

- **"Go deeper on [topic]":** write a new Brief primer on that topic in this format.
- **"Fix the card on [X]":** rewrite only that card, then rebuild the EPUB.
- **"Make it shorter" or "make it longer":** move one depth level and rewrite.
- **"Combine these":** build earlier primers into one EPUB. Use their fragments if you still have them; otherwise extract each EPUB with `pandoc old.epub -t html`, keep one `<h1>` per primer, and rebuild.
