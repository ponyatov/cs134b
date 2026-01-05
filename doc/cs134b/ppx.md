# ppx
## PreProcessor eXtension

https://ocamlverse.net/content/ppx.html

OCaml provides a syntactic extension facility known as “PreProcessor eXtensions”, or **PPX**s. A PPX allows you to add entirely new syntax and features to the OCaml language, something that is not otherwise possible.

PPXs are implemented as OCaml programs which are plugged into the compiler as custom pre-procesing stages. The extensions look for small syntactic “hooks” that signal that an extension should do its work.

The syntactic signals that extensions look for all follow patterns that are defined by the OCaml language specification, but that mean nothing to the compiler itself without a plugin.

This chapter is presented in three parts. The first part gives a brief informal explanation of how PPXs are used. The second part gives some detail on how a PPX works and the syntactic hooks OCaml provides for use by PPXs. The third section provides some detail on how you can write a new PPX, and gives pointers to other documentation that may be of interest to extension writers.

## [[How PPXs are used]]
## [[How does a PPX work behind the scenes]]?
## [[Writing PPX]]
