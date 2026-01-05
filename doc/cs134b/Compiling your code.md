# Compiling your code
## Компиляция кода

два основных компилятора:
- [[ocamlc]] — **байт-код компилятор**.
	- Компилирует исходный код в промежуточный байт-код,
	- который затем выполняется виртуальной машиной OCaml.
	- Этот компилятор используется для быстрой разработки и отладки
- [[ocamlopt]] — **нативный (native) компилятор**
	- Компилирует исходный код напрямую в машинный код для целевой архитектуры (например, x86-64, ARM).
	- Это создаёт высокопроизводительные исполняемые файлы, 
	- сравнимые по скорости с кодом на C/C++,
	- но процесс компиляции занимает больше времен

`lib/hello.ml`
```ocaml
let () = print_endline "Hello World!"
```
```sh
$ ocamlc   -o bin/hello.byte   lib/hello.ml
$ ocamlopt -o bin/hello.native lib/hello.ml
```
```
bin/
	hello.byte
lib/
	hello.ml
	hello.cmi
	hello.cmo
	hello.cmx
```
```sh
$ file bin/hello.*
```
```
bin/hello.byte:
	a /home/dponyatov/.opam/default/bin/ocamlrun script executable (binary data)

bin/hello.native:
	ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=0eafe60b2e284284f46043c1b7a1e947c346247f, for GNU/Linux 3.2.0, with debug_info, not stripped
```
```sh
$ ./bin/hello.byte
$ ./bin/hello.native
```
```
Hello World!
```
```sh
$ file lib/hello.*
```
```
lib/hello.ml:  OCaml source code
lib/hello.cmi: OCaml interface file (.cmi) (Version 036)
lib/hello.cmo: OCaml bytecode object file (.cmo) (Version 036)
lib/hello.cmx: OCaml native object file (.cmx) (Version 036)
lib/hello.o:   ELF 64-bit LSB relocatable, x86-64, version 1 (SYSV), not stripped
```

## многофайловые проекты

- Программы на OCaml часто состоят из нескольких исходных файлов
- Порядок компиляции имеет значение
- [[OCaml/dune|dune]] — современная, наиболее популярная система сборки для OCaml. Она автоматически определяет зависимости, порядок компиляции и предоставляет удобный workflow.

```sh
$ dune build
```

![[cs134b/dune]]
![[cs134b/dune-project]]
