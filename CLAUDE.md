# cyberia-blog — agent instructions

this repo is the project chronicle and the graph assembler.
[cyber.page](https://cyber.page) is the protocol. this site is the history, the subgraphs, and the graph.

## Git Workflow

- **Commit by default.** After completing a change, commit it.
- **Atomic commits.** One logical change per commit.
- **Conventional commits.** Prefixes: `feat:`, `fix:`, `refactor:`, `docs:`, `test:`, `chore:`.

## What lives here

- `blog/` — dated journal entries (`YYYY_MM_DD.md`). optica publishes them as `/YYYY-MM-DD`.
- `blog.md` — homepage. filter chips to the four topics.
- `cyber.md` `cyb.md` `soft3.md` `cyberia.md` — topic hubs. each is also the declaring page for that subgraph, so optica prepends the topic chronicle onto the subgraph README.
- `subgraphs.toml` — the census of every repo in the published graph.
- `scripts/` — sync, build, serve, lock, deploy.

## Local workflow

```
cd ~/cyber/cyberia-blog
nu scripts/sync.nu
nu scripts/build.nu --public-only
nu scripts/serve.nu
nu scripts/deploy.nu
```

## Writing

state what something is. never define by negation. never use bold. wiki-links for concepts. root terms from the cybergraph: particle, cyberlink, neuron, cybergraph.

## Do not touch without discussion

`subgraphs.toml` structure, `publish.toml` site identity, `LICENSE.md`.
