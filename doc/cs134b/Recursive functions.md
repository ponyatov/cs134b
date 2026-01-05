# Recursive functions
## Рекурсивные функции

Для определения рекурсивной функции используется ключевое слово `rec`:

```ocaml
let rec factorial n =
  if n <= 1 then 1
  else n * factorial (n - 1)

let fact5 = factorial 5  (* fact5 = 120 *)
```

Хвостовая рекурсия (tail recursion) оптимизируется компилятором:
- для передачи контекста вычисления между итерациями часто требуется использование параметра-аккумулятора
```ocaml
let rec factorial_tail n acc =
  if n <= 1 then acc
  else factorial_tail (n - 1) (n * acc)

let fact5_tail = factorial_tail 5 1  (* fact5_tail = 120 *)
```
