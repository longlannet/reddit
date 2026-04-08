---
name: reddit
description: Read and search Reddit posts and comments via rdt-cli. Use when the user wants Reddit discussions, subreddit results, post details, comment threads, real user experiences, bug reports, provider reviews, or community feedback.
---

# Reddit

Use this skill for Reddit reading and search.

## When to use
Use this skill when the user wants:
- real user opinions instead of SEO articles
- bug reports and workaround discussions
- VPS / hosting / tool reviews
- self-hosted / Linux / AI / programming community feedback
- a full post plus its comments

## Quick start
```bash
.venv/bin/rdt search "query"
.venv/bin/rdt read POST_ID
.venv/bin/rdt sub selfhosted
```

## Workflow
1. Search first.
2. Read the useful post.
3. Summarize comments, not just the title.

## Notes
- Prefer `rdt` over ad-hoc scraping.
- No login is normally needed for read-only flows.
- Do not use this skill for non-Reddit forums.
- Keep detailed human-facing usage in `README.md`.
