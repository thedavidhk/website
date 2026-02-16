+++
title = "c3pg"
description = "A Cargo-inspired development suite for C++ projects, written in Rust."
weight = 1
template = "project.html"

[extra]
repo_url = "https://github.com/dherok/c3pg"
crates_url = "https://crates.io/crates/c3pg"
tags = ["Rust", "C++", "Developer Tooling", "CLI"]
+++

**c3pg** brings Cargo-style project management to C++. It handles project scaffolding, builds, and common development tasks through a single CLI — replacing the boilerplate of manually configuring CMake, directory layouts, and compiler flags.

## Why

Anyone who works in both Rust and C++ knows the gap in developer experience. Starting a new Rust project is one command. Starting a new C++ project is a maze of build system choices, directory conventions, and configuration files.

c3pg closes that gap. It provides opinionated defaults for project structure and builds, so you can go from zero to a compiling project in seconds — and maintain that project without fighting the toolchain.

## Features

- **Project scaffolding** — standard directory layout and build configuration from a single command
- **Build management** — consistent build, run, and test commands without hand-written CMake or Makefiles
- **Opinionated defaults** — sensible compiler settings and project structure out of the box
- **Single binary** — written in Rust, distributed via [crates.io](https://crates.io/crates/c3pg), no runtime dependencies
