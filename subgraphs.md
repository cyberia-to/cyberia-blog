---
tags: cyberia
crystal-type: entity
crystal-domain: cyber
alias: subgraphs
---
# subgraphs

subgraphs are repositories imported into the graph. their pages and files become particles alongside the chronicle — linkable, searchable, and ranked together.

this repo is the workspace that declares them. `subgraphs.toml` is the census. `scripts/build.nu` materializes the list into a TOML manifest and hands it to [[optica]] via `--subgraphs`. optica pulls each declared repo, renders its pages, and merges them with the chronicle into one ranked graph.

[cyber.page](https://cyber.page) publishes the protocol alone. this site publishes the whole project.

## adding a new subgraph

1. add a `[[subgraph]]` block to `subgraphs.toml` with `visibility = "public"` (or `private` to keep it off the public build)
2. add `notify-cyber.yml` to the new repo so pushes trigger a rebuild of this site (the reusable workflow in `cyberia-to/cyber` dispatches here):

```yaml
# .github/workflows/notify-cyber.yml
name: Notify cyber

on:
  push:
    branches: [master, main]

jobs:
  notify:
    uses: cyberia-to/cyber/.github/workflows/subgraph-notify.yml@master
    secrets: inherit
```

3. add `CYBER_DISPATCH_TOKEN` to the repo's secrets if it is not already set at org level.

to add the workflow to all public subgraphs at once: `nu scripts/add-notify-workflow.nu` from this repo. dry-run first with `--dry-run`.

## canonical set

`subgraphs.toml` is the living census. `nu scripts/lock.nu` snapshots each checkout's HEAD into the `commit` field.
