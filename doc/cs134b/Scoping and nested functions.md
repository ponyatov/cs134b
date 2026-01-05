# Scoping and nested functions
## Область видимости и вложенные функции

В OCaml используются **блоки видимости**, ограниченные конструкциями `let ... in`. Переменные и функции, определённые внутри такого блока, видны только в нём.

```ocaml
let x = 5 in
let y = x + 3 in
x * y  (* результат: 40 *)
```

Функции могут быть вложенными:

```ocaml
let outer a =
  let inner b = a + b in
  inner 10

let result = outer 5  (* result = 15 *)
```
