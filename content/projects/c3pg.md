+++
title = "c3pg"
description = "A Cargo-inspired development suite for C++ projects."
weight = 1
template = "project.html"

[extra]
repo_url = "https://github.com/dherok/c3pg"
crates_url = "https://crates.io/crates/c3pg"
tags = ["Rust", "C++", "Developer Tooling", "CLI"]
+++

**c3pg** is a command-line tool that brings the ergonomics of Rust's Cargo to C++ development. If you've ever envied how easy it is to create, build, and manage Rust projects with Cargo, c3pg aims to provide a similar experience for C++.

## Motivation

C++ tooling has historically been fragmented. Setting up a new project involves choosing and configuring a build system, creating directory structures, wiring up dependencies, and writing boilerplate. For someone who regularly works in both Rust and C++, the contrast in developer experience is stark.

c3pg was born out of that frustration — a single tool to handle the common tasks of C++ project management with sensible defaults and minimal configuration.

## Key Features

- **Project scaffolding** — create new C++ projects with a standard directory layout in one command
- **Build management** — consistent build commands without writing CMake or Makefiles by hand
- **Opinionated defaults** — sensible project structure and compiler settings out of the box
- **Written in Rust** — fast, reliable, and distributed as a single binary via crates.io
