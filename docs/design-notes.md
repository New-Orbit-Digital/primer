# Design notes

Why Primer is built the way it is. `SKILL.md` says what to do; this file says why. When a rule in `SKILL.md` changes, update the matching note here in the same pull request.

## The goal

Orientation, not expertise. After a primer, the reader should be able to say one accurate, non-trivial thing about the subject, follow a real conversation about it, and know where to go next.

## Why the format is fixed

- **The same structure every time** lowers the effort of reading. The reader learns where things live and stops spending attention on navigation.
- **The one-minute version comes first.** It works as an advance organizer: the big ideas are named before the detail arrives, so the detail has somewhere to attach.
- **Front-loading.** Every section and card leads with its most important sentence. A reader who stops early still got the core.
- **Cause over chronology.** Cards and timelines explain why one thing led to another. Causal stories are retained far better than lists of events.
- **The brain dump.** Writing down what you think you know, and then seeing it corrected, makes the correction stick (the pretesting or generation effect). That is why misconceptions from the request are corrected by reference.

## Why depth comes from the coverage picks

Asking "how long do you want this?" gets unreliable answers. Asking what to cover gets real preferences, and the number of picks is a good stand-in for how deep someone wants to go. One question does two jobs.

## Why purpose came back as a question

An early design folded "what's this for" into the coverage menu, to keep intake to one question. In use, the purpose turned out to change the content itself, because the practical chapter differs for work, a meeting, a decision and curiosity. It is now its own question, asked in the same round, and skipped when the request already answers it.

## Why the fact sheet comes first

Writing from search results directly lets unsupported claims slip in. Building the fact sheet first, with separate lists for conflicts, unverified items and unreadable pages, makes every claim traceable. It also produces the verification note at the end for free.

## Why Debates is never optional

Fairness is the core promise. Two duties must not blur:

- **Misconceptions** are wrong by the evidence, and the primer says so plainly.
- **Live debates** are questions where informed people disagree. Each side gets its strongest version and a source that side would cite itself.

Filing a debate as a misconception launders one side's view as fact. Filing a settled question as a debate manufactures false balance. If every corrected misconception happens to favor one side of a political divide, the section gets re-checked.

## Why everything is written for the ear

Many readers listen rather than read. Short sentences, no em-dash asides, spelled-out abbreviations, spoken-style numbers, and no tables or bare URLs all keep a text-to-speech voice intelligible. Text that is easy to hear is also easy to read.

## Why the output is one EPUB

- An EPUB works in every e-reader and every read-aloud app.
- One file per run keeps a library tidy. Separate files per primer, or per part, scattered related material across many collections in reader apps.
- Earlier versions also published a web page and emailed the files. Both added steps without adding anything the EPUB doesn't already do.

## Why the skill is generic

So it can be shared. The skill holds the method. Each person's own assistant holds who they are. The skill is told to use that context when it exists, and never to ask for it or invent it.

## Lineage

Primer began as a design for a card-carousel app (the Card Library Specification, v0.1, August 2026). The skill kept that spec's core ideas: depth from coverage picks, a fixed order, auto-included Debates and Further reading, the brain dump, and follow-up topics. It simplified the rest:

- The Overview became the one-minute version plus numbered core ideas.
- Story, How It Works, Key Players and Key Numbers became themed cards, the timeline, and Terms you will hear.
- Expansion chips became Go deeper topics.
- The Check Yourself card was dropped.
