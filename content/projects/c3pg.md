+++
title = "c3pg"
description = "A Cargo-inspired development suite for C++ projects, written in Rust."
weight = 1
template = "project.html"

[extra]
repo_url = "https://github.com/thedavidhk/c3pg"
crates_url = "https://crates.io/crates/c3pg"
tags = ["Rust", "C++", "Developer Tooling", "CLI"]
+++

c3pg is a small CLI tool that makes starting and managing C++ projects feel less heavy. It wraps CMake and Conan behind
a Cargo-inspired interface and provides sensible defaults so you can focus on writing code instead of assembling build
logic.

It’s opinionated. It’s evolving. And it grew out of personal frustration with tooling friction.

#  Why It Exists

If you’ve worked with both Rust and C++, you’ve probably felt the difference in workflow.

In Rust, starting a project is straightforward:

```
cargo new
cargo run
cargo test
```


In C++, the first step often involves choosing (and configuring) a build system, deciding on directory layout, wiring up
dependency management, and tweaking compiler flags.

All of those tools are powerful — but they add ceremony.

c3pg doesn’t replace CMake or Conan. It sits on top of them and standardizes the common case. The goal isn’t flexibility
for every edge case. It’s reducing friction for everyday experimentation and small-to-medium projects.

## What It Does

Scaffolds new C++ projects with a consistent layout

Manages dependencies via Conan through a simple c3pg.toml

Provides unified build, run, and test commands

Enables sanitizers and integrates common development tools

Follows a Cargo-like command structure to minimize surprise

Under the hood, the complexity is still there. c3pg just hides it behind conventions.

## Current State

c3pg works well for my own workflows, but it’s not a mature ecosystem tool.

There are still rough edges.

Most configuration is intentionally abstracted away.

Advanced CMake and Conan customization is limited (for now).

Future iterations will likely expose more of that customization while keeping the default path simple.

If you try it and run into issues, I’d genuinely appreciate feedback — especially via GitHub.

[View on GitHub](https://github.com/thedavidhk/c3pg)

[Available on crates.io](https://crates.io/c3pg)
