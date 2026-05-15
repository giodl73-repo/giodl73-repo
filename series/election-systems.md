# Election Systems Series

This Rust-first series covers reproducible civic evidence: district generation,
district plan packages, election-count packages, and the audit boundaries
between them.

| Repo | Role |
|------|------|
| [REDIST](https://github.com/giodl73-repo/REDIST) | Public redistricting research and presentation surface. |
| [BISECT](https://github.com/giodl73-repo/BISECT) | Rust redistricting engine for recursive bisection, analysis, reporting, and verification. |
| [RPLAN](https://github.com/giodl73-repo/RPLAN) | Reusable district-plan package, IO, audit, and CLI contracts. |
| [RCOUNT](https://github.com/giodl73-repo/RCOUNT) | Reusable election-count package verification, audit replay, and district aggregation. |

## Why these belong together

BISECT draws and analyzes plans. RPLAN makes plan packages portable. RCOUNT
verifies count evidence and audit replay packages. REDIST is the public research
story around the districting work. The shared theme is reproducibility: every
claim should connect back to a package, a hash, a command, or an audit boundary.

