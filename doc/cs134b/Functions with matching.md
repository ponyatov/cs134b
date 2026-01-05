# Functions with matching
## Функции с сопоставлением

В OCaml функция может быть определена сразу через сопоставление с образцом с помощью ключевого слова `function`:

```ocaml
(* Определение функции с pattern matching *)
let rec factorial = function
  | 0 -> 1
  | n -> n * factorial (n - 1)

(* Эквивалентно более подробной записи: *)
let rec factorial n =
  match n with
  | 0 -> 1
  | n -> n * factorial (n - 1)

let result = factorial 5  (* 120 *)
```

сопоставление с образцом можно использовать непосредственно в описании параметров функции:
- разбор аргументов через шаблоны в параметрах:
```ocaml
(* Вместо: *)
let add_pair tuple =
  match tuple with
  | (x, y) -> x + y

(* Можно сразу написать: *)
let add_pair (x, y) = x + y

(* Использование: *)
let result = add_pair (3, 4)  (* 7 *)
```

