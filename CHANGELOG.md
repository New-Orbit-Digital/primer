# Changelog

## 1.1.0 — 2026-11-23

Book primers now surface every thesis a book develops. Brevity is a byproduct of summarizing, never a goal: a primer that merges or drops a book's arguments to hit a word count has lost what the reader came for.

### Changed

- **Thesis map.** Research for a book starts with a map of every distinct thesis, argument or foundational topic, in the book's order, with chapters. Frameworks and methods count. The map is built from the book's text when available, otherwise from the full table of contents plus secondary sources.
- **One section per thesis.** Core ideas lists every thesis at every depth, with no cap. At Conversation and Research depth, every thesis gets its own card or group of cards, in the book's order. Two theses are never merged into one card.
- **Word counts are a floor for books.** Length follows the thesis count.
- **Checks and verification.** The check confirms every thesis is covered, and the verification note says what the map was built from and how many theses it holds.

### Verification

- **First live run, 2026-11-23:** three book primers built in parallel at Research depth from secondary sources (Warburton's A Little History of Philosophy, Sagan's The Demon-Haunted World, Dennett's Intuition Pumps), as one EPUB with a series guide and two extra chapters.
  - Thesis maps held 40, 23 and 32 theses. Every thesis has its own core idea and its own card or group of cards (40, 26 and 35 cards).
  - Lengths were about 6,500, 6,300 and 7,500 words. All three are above the Research floor of 4,000 words, and all three run past the old 5,500-word ceiling.
  - Every non-cluster card has the five labels in order and is 150 words or fewer. Reaching that took one fix pass on the Dennett primer, where 25 cards had skipped or reordered a label.
  - Build: one text file per chapter, the table of contents lists every chapter and section, source links survive, and the zip integrity test passes.

## 1.0.0 — 2026-10-31

The first version kept in this repo. It merges two earlier skills that were maintained only as installed copies, `listening-primer` (the more developed one, used as the base) and a chat-only `primer`, into a single `primer` skill.

### Changed

- **One skill for every use.** Research for work, preparing to meet someone, a decision, or plain curiosity all run through the same skill.
- **Intake asks for the purpose as well as the coverage.** This reverses an August 2026 design decision that folded "what's this for" into the coverage menu. The purpose now changes what the primer contains (the practical chapter), so it gets its own question. It is skipped when the request already says what the primer is for.
- **Generic by default.** The skill no longer contains any person's name, email address, folders or apps. Personal context comes from the user's own assistant (memory, profile, project instructions), never from the skill.
- **The output is always one EPUB, handed over in the conversation.** Removed: the private web page, emailing EPUBs as attachments, the 20 KB per-file cap (it existed only because email attachments had to be typed out as encoded text), and splitting long primers into separate part files. Long primers are now one file with chapters.
- **Smaller EPUBs.** Each primer builds as one internal file (`--split-level=1`), which roughly halved file size in an earlier test run. That finding never made it into the previous skill.
- **Batches and series.** Several primers in one run become one EPUB with one chapter per primer. Each primer is still written as its own fragment, so any one of them can be built on its own later.
- **Callers.** Another skill or an automation can pass topics, purpose, coverage, depth, source files and a title, and Primer asks nothing that was supplied. Defaults apply when no one can answer, and they are recorded in the verification note.
- **Books.** When the user has the book as a file, its own text is the primary source and chapters are cited instead of URLs. Outside sources appear only in Debates. A book primer built without the text says so in its first line.
- **Practical chapter by purpose.** "For your work," "If you meet them," "For your decision," or none for curiosity. It always addresses the reader as "you."
- **Sources stay in the EPUB** as linked titles. They were previously stripped out and kept only on the web page.
- **Portable.** Without a shell, the skill delivers the primer as text with the same headings. This replaces the separate chat-only version.
- **Update check.** Each run compares the installed version with the newest entry in this changelog. If the repo is ahead, the run says so in one line and continues with the installed version. Updating happens only when the user asks, after they have seen what changed.
- **Changelog guard.** A check on every pull request fails if `SKILL.md` changes without a raised version and a matching changelog entry.

### Kept

The source trust order, the fact sheet with its conflict and not-verified lists, the fixed section order, the five-label card template, the writing rules for listening, the depth table, and the estimate of 165 spoken words per minute.

### Verification

- **Build script tested 2026-10-31** with pandoc 3.1.3, using the exact commands in `SKILL.md`, on a sample single primer and a two-primer batch:
  - Each EPUB contains one text file per primer.
  - The table of contents lists every primer and its sections.
  - Source links are preserved, and embedded styles are stripped.
  - Zip integrity tests pass.
- **Combine path:** reading an EPUB back to HTML keeps one `<h1>` per primer.
- **Changelog guard:** its script was run locally against six cases, and each passed or failed as expected:
  - first version (pass);
  - a proper version raise (pass);
  - an edit without a changelog entry (fail);
  - a version that doesn't match the changelog (fail);
  - an unraised version (fail);
  - a docs-only change (pass).
- **Update check:** reading a public file from this GitHub organization from Claude's workspace works. Reading this repo's changelog cannot be tested until the repo is public.
- **Not yet tested:** a full research run with real content. The first live primer after this merge is that test.
