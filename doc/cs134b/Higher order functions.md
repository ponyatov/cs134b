# Higher order functions
## Функции высшего порядка

Функции могут принимать другие функции в качестве аргументов и возвращать функции как результат:

```ocaml
let apply_twice f x = f (f x)

let increment x = x + 1
let result = apply_twice increment 5  (* result = 7 *)
```

Стандартные функции высшего порядка для работы со списками:

```ocaml
List.map (fun x -> x * 2) [1; 2; 3]  (* [2; 4; 6] *)
List.filter (fun x -> x mod 2 = 0) [1; 2; 3; 4]  (* [2; 4] *)
List.fold_left (fun acc x -> acc + x) 0 [1; 2; 3]  (* 6 *)
```
