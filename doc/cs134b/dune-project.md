```lisp
(lang dune 3.20)

(name cs134b)

(generate_opam_files true)

(source
 (github ponyatov/cs134b))

(authors "Dmitry Ponyatov <dponyatov@gmail.com>")

(maintainers "Dmitry Ponyatov <dponyatov@gmail.com>")

(license MIT)

(documentation https://github.com/ponyatov/cs134b/wiki)

(package
 (name cs134b)
 (synopsis "OCaml workout")
 (description "OCaml workout with embedded compiler design")
 (depends ocaml utop dune ocamlformat ocaml-lsp-server ppx_string menhir)
 (tags
  ("OCaml" "code generation" compiler translator)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
```
