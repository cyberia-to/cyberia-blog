---
title: cyberia.blog
tags: cyberia
crystal-type: entity
crystal-domain: socio
icon: "📡"
alias: chronicle, the graph, cyberia blog
---
# cyberia.blog

the chronicle of the project, and the place the whole knowledge graph lives.

the homepage is the [[blog]]. filter it by topic: [[cyber]] · [[cyb]] · [[soft3]] · [[cyberia]].

the protocol itself — small, readable, one subject — stays at [cyber.page](https://cyber.page). this site holds the history, the subgraphs, and the graph that binds them.

## local

```
git clone git@github.com:cyberia-to/cyberia-blog.git ~/cyber/cyberia-blog
cd ~/cyber/cyberia-blog
nu scripts/sync.nu        # clone every declared subgraph as a sibling
nu scripts/serve.nu       # full graph at localhost:8888
nu scripts/build.nu       # static build
nu scripts/deploy.nu      # rsync build/ → cyberproxy
```

`optica` is the publisher. the workspace root is this repo; `cyber` is a subgraph mounted at `/cyber`.

## domain

`cyberia.blog` — A `@` → `167.235.28.94`, CNAME `www` → `cyberia.blog`. nginx: `cybernode/servers/cyberproxy/nginx/cyberia.blog`. TLS via certbot after DNS answers. tracker: lytics.cyb.ai.

## license

cyber license: don't trust. don't fear. don't beg.
