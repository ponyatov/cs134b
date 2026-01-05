```lisp
(executable
 (name hello)
 (public_name hello)
 (modules hello)
 (libraries ppx_string cs134b)
 (preprocess (pps ppx_string))
 (package hello))

(library
 (name cs134b)
 (modules cs134b)
 (libraries ppx_string)
 (preprocess (pps ppx_string))
 (package cs134b))

(test
 (name test)
 (modules test)
 (libraries cs134b)
 (package cs134b))
```
