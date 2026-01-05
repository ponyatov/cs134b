# Labeled parameters and arguments
## Именованные параметры и аргументы

- OCaml поддерживает
	- **помеченные** (labeled) и 
	- **опциональные** (optional) параметры функций,
- что улучшает читаемость кода
- именованные аргументы можно передавать в любом порядке

```ocaml
let greet ~name ~message = 
  Printf.sprintf "%s, %s!" message name

let greeting = greet ~name:"Алексей" ~message:"Привет"
(* greeting = "Привет, Алексей!" *)
```

- опциональные параметры позволяют задать значение по умолчанию

```ocaml
let connect ?(port=8080) ~host () =
  Printf.sprintf "Подключение к %s:%d" host port

let conn1 = connect ~host:"localhost" ()  (* порт по умолчанию 8080 *)
let conn2 = connect ~port:9000 ~host:"server" ()
```

3.3.1 [[cs134b/Rules of thumb|Правила использования]]
