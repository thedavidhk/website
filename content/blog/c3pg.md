+++
title = "I Just Wanted to Experiment in C++ (So I Built a Rust Tool)"
date = 2026-02-16
description = "A small story about tooling friction, a throwaway script, and how it slowly turned into c3pg."
draft = false

[taxonomies]
tags = ["c3pg", "c++", "rust", "cmake", "conan"]
+++

When I (have to) write C++, I often just want to *try something*.

Not start a full project. Not design a build system. Just test a language feature. Sketch a pattern. Check whether an
idea compiles.

For longer than I care to admit, I used [Compiler Explorer](https://godbolt.org/) for that.

And it’s a fantastic tool. Switching compilers and architectures with a click, inspecting assembly instantly—that’s
incredibly powerful. But I kept using it for something much simpler: quick experiments.

As a web service, it adds a lot of friction to that workflow. More importantly, it’s limited when it comes to libraries.
Yes, you get popular ones like Boost. But if you want to try something with your own library—or something more
obscure—you’re out of luck.

I always felt like I was abusing it. Using a sophisticated compiler exploration platform as a scratchpad because there
wasn’t a good local alternative.

So I tried to build one.

## The First Attempt

The first version was a small Python script.

It created a dummy C++ project, dropped in a `main.cpp`, generated a minimal Makefile, and built it. That already felt
better than doing those steps manually or opening a browser.

But the moment I needed dependencies, things escalated. Suddenly I was generating more files. Glue code started creeping
in. What began as a quick helper script turned into a fragile file-generation machine.

At that point, I knew I should use Rust.

If I was going to model project configuration properly—serialize it, evolve it, keep it maintainable—I wanted strong
structure and clean (de-)serialization. Rust’s ecosystem around `serde` makes that almost effortless. So I rewrote it.

## The Cargo Influence

Subconsciously, Cargo had always been in the background.

If you’ve worked with Rust, you know how good it feels:

* `cargo new`
* `cargo add`
* `cargo run`
* `cargo test`

Minimal ceremony. Strong conventions. Sensible defaults.

Once the project was in Rust, I made the inspiration explicit. I modeled the CLI—and the `c3pg.toml` configuration
file—after Cargo.

This wasn’t about copying for the sake of it. It was about minimizing surprise. Good interfaces reuse patterns people
already understand. If something works exceptionally well in one ecosystem, there’s no reason to reinvent it in a
slightly worse way.

That’s how c3pg started to become more than a quick test helper.

## What c3pg Actually Is

Today, [c3pg](/projects/c3pg/) is a CLI tool that lets you:

* create a new C++ project,
* declare dependencies in a `c3pg.toml`,
* build and run with sensible defaults,
* scaffold and execute tests,
* enable sanitizers,
* integrate formatting and linting.

From the outside, it’s intentionally clean.

Under the hood, it’s powered by CMake and Conan.

And yes—those are complex systems.

c3pg does not eliminate that complexity. It hides it.

That distinction matters.

If something deep in CMake behaves unexpectedly, c3pg can’t magically fix the entire C++ tooling ecosystem. What it can
do is standardize the common case. Provide structure. Remove repetitive boilerplate. Make experimentation feel
lightweight again.

For me, that alone is valuable.

## A Small Piece of the Rust Experience

If I’m being honest: if I could, I would probably write most new systems in Rust.

The reasons go far beyond tooling, and that’s not the focus here. But Cargo is a big part of what makes Rust development
feel cohesive. C++ doesn’t have a single, unified “cargo moment.” It has powerful tools—but they don’t compose into a
simple experience by default.

c3pg is not trying to fix CMake, Conan, or C++.

It’s a small, opinionated layer that brings a bit of that convention-driven workflow into my daily C++ experiments.

And sometimes that’s enough.

## Not a Finished Product

It’s important to say this clearly: c3pg is far from “finished”.

It works well for me. I use it regularly. But I know there are hacky parts. There probably always will be, given the
nature of wrapping complex systems like CMake and Conan.

It also hasn’t been battle-tested by a large user base.

Right now, it’s a tool that grew out of personal frustration and iteration. That means there are edges I haven’t hit
yet. Assumptions I haven’t challenged.

If you try it and something breaks, that’s valuable information.

If you wish it behaved differently, that’s interesting.

I’d genuinely appreciate feedback—especially via [GitHub issues](https://github.com/thedavidhk/c3pg/issues). And I
expect more features to come, particularly around giving users more explicit control over CMake and Conan when they need
it. At the moment, most of that complexity is abstracted away. That’s great—until you want to tweak something
non-standard.

That balance is still evolving.

## Why I Built It

This project didn’t start with a grand vision.

It started with a simple desire: to experiment locally in C++ without feeling like I was assembling build logic every
time.

c3pg doesn’t revolutionize the ecosystem. It doesn’t remove complexity from C++. But it does make the common path
smoother.

And that has already changed how often I experiment.

If that resonates with you, give it a try.

And let me know where it breaks.
