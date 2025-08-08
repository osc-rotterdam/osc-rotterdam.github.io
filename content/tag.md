---
description: Tags
keywords:
- guide
- principles
- OSCs
title: Tags
type: page
---

{{ range $name, $taxonomy := .Site.Taxonomies.tags }}
    <a href="/tags/{{ $name | urlize }}">#{{ $name | humanize }} ({{ $taxonomy.Count }})</a>
{{end}}