+++
title = "Hello, World"
date = 2026-02-16
description = "A first post — mostly here as a reference template for future writing."
draft = true

[taxonomies]
tags = ["meta"]
+++

This is a reference blog post. You can copy this file as a starting point for new posts.

## Front-matter fields

Every blog post starts with a `+++` front-matter block. Here are the key fields:

- **title** — the post title (shown in listings and as the page heading)
- **date** — publication date in `YYYY-MM-DD` format (used for sorting)
- **description** — a short summary (shown in listings and used for SEO meta tags)
- **draft** — set to `true` to hide the post from production builds (visible with `zola serve --drafts`)
- **taxonomies.tags** — a list of tags for categorization

## Markdown features

All standard Markdown works. Here's a quick sampler:

### Code blocks

Fenced code blocks get automatic syntax highlighting:

```rust
fn main() {
    println!("Hello from the blog!");
}
```

### Lists

- Item one
- Item two
  - Nested item

### Blockquotes

> "The best way to predict the future is to invent it." — Alan Kay

### Links

Link to [another page on the site](/about/) or to an [external resource](https://www.getzola.org/).

---

To create a new post, copy this file, update the front-matter, and write your content. Remove `draft = true` when you're ready to publish.
