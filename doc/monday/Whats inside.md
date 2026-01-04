# What's inside

This is a project-based guide, and I will walk you through everything, with no code left out. You will learn:

- **The Foundation**: What the Abstract Syntax Tree (AST) is and how to "see" your OCaml code just like the compiler does.
- **The Toolbox**: How to use the `ppxlib` library, including the `Ast_mapper` to find and change code, and the `Ast_builder` to generate new code from scratch.
- **Your First PPX**: We build a simple `[@hello]` attribute to learn the complete setup, from dune files to implementation.
- Project 1: **The Deriver**: We will build a complete, professional-grade `[@@deriving print]` PPX from start to finish. You'll write a tool that can automatically generate "pretty-printers" for both record and variant types.
- Project 2: **The DSL**: We will create a `[%html ...]` extension node. You'll build your own safe, embedded Domain-Specific Language (DSL) that transforms HTML-like syntax into secure OCaml function calls.
- **The Polish**: How to write robust PPX extensions that provide clear, helpful error messages to your users.
- **The Pro Tools**: A guide to testing, debugging, and deploying your new PPX to the OPAM repository for everyone to use.