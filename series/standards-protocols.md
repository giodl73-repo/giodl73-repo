# Standards & Protocols Series

This series contains portable conventions and identifier systems that other
repos can adopt without inheriting a full implementation stack.

| Repo | Role |
|------|------|
| [MDPATH](https://github.com/giodl73-repo/MDPATH) | Stable `md://` URI library and addressing convention for headings, figures, tables, and diagrams in markdown corpora. |
| [ROLES](https://github.com/giodl73-repo/ROLES) | Portable `.roles` convention for repository-local review panels, role metadata, and review/authoring skills. |

## Why these belong together

These repos define public agreements: how to name a document location, how to
place review roles in a repo, and how tools can recognize those conventions.
They may include code or validators, but their durable value is the protocol
that lets many repositories interoperate.

Boundary rule: a repo belongs here when the convention or identifier is the
main artifact. A repo with protocols inside it can still belong in Tools &
Infrastructure when its primary public surface is executable shared code.
