# Primer

A skill that turns "primer on X" into a fair, well-sourced, consistently formatted primer, delivered as an EPUB you can read in any e-reader or listen to in any read-aloud app.

## What it does

- **Asks two short questions:** what the primer is for, and what to cover. The number of coverage picks sets the depth: about 5 minutes, 10–12 minutes, or 25–35 minutes of listening.
- **Researches before writing:** primary sources first, then reputable reporting. Every claim goes on a sourced fact sheet, and nothing off the sheet reaches the primer.
- **Writes in a fixed structure:** a one-minute version, core ideas, cards with the same five labels every time, debates with each side's own sources, a practical chapter matched to the purpose, and a sources and verification section.
- **Builds one EPUB:** several primers in one run become one EPUB with a chapter per primer.

## Install

The skill is the folder `skills/primer/`. It follows the Agent Skills format: a folder containing a `SKILL.md`. Add that folder to your assistant as a custom skill.

It needs web search. Building the EPUB needs a shell with `pandoc` and Python. Without a shell, it delivers the primer as text in the conversation.

## Personal context

The skill contains nothing about any particular person. If your assistant already knows about you (from memory, a profile, or project instructions), the skill uses that to tailor the purpose options and the practical chapter. For example, it names your business in the work option. It never asks for that context.

## Calling it from something else

Another skill, a scheduled task or an automation can run Primer by passing any of: topics, purpose, coverage picks, depth, source files and a title. Primer skips every question that is already answered. Several topics in one call come back as one EPUB.

## Updates

Each run starts with a quick check of this repo's changelog. If a newer version exists, the assistant says so in one line and keeps using the installed copy. Nothing updates on its own. When you ask to update, it shows you what changed, and only after you confirm does it give you the new skill to install.

If you keep your own copy, change the two repository addresses in `SKILL.md` to point at your copy, or delete its Update check section.

## How changes are made

- Changes land through pull requests.
- Every change to `SKILL.md` raises the version line at its top and adds a matching entry at the top of `CHANGELOG.md`, in the same pull request. An automatic check on each pull request fails if the two don't match, or if the version wasn't raised.
- Version numbers: raise the last number for wording fixes, the middle number for new behavior, and the first number for changes to the intake or the output format.
- `docs/design-notes.md` explains the reasoning behind the format.
- The repo is the authoritative copy. Installed copies are updated from `skills/primer/SKILL.md` on `main`.
