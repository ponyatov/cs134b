# `utop`
## OCaml toplelvel (REPL)
### интерактивный интерпретатор (REPL=toplevel)

Для быстрого тестирования кода и изучения языка существует интерактивная среда, или верхнеуровневый интерпретатор
- `ocaml` из комплекта базового компилятора
- [[OCaml/utop|utop]] с расширенным функционалом

файл инициализации при запуск toplevel:

![[cs134b/ocamlinit|.ocamlinit]]

- `#require` подгружает библиотеку
- код из файлов можно загрузить в toplevel с помощью директивы `#use`:
```ocaml
# #use "lib/hello.ml";;
```
```
Hello World!
```

интеграция с VSCode:
- расширение  **OCaml Platform Extension**
	- `opam install ocaml-lsp-server utop`
	- "ocamllabs.ocaml-platform"
	- opam switch (sandbox) выбирается внизу экрана 
- `Ctrl+Enter` OCaml: Evaluate Selection
	- выделенный код будет выполняться в REPL
	- автоматически добавляется `;;`
