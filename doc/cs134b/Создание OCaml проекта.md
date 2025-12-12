# Создание OCaml проекта

1. Создайте свой форк на GitHub, или пустой проект:
	- https://github.com/ponyatov/cs134b

2. Склонируйте и создайте свою ветку:
```sh
git clone -o gh https://github.com/user/cs134b
git checkout -b `whoami`
git push -uv gh `whoami`
```

3. Создайте базовый набор каталогов проекта:
	- 
		```sh
		mkdir {.vscode,bin,doc,lib,inc,src,tmp,ref}
		echo '*' | tee {bin,tmp,ref}/.gitignore
		echo '!.gitignore' | tee -a {.vscode,bin,doc,lib,inc,src,tmp,ref,.}/.gitignore
		```
	- `.gitignore`
		![[cs134b/gitignore]]

4. Файлы для OCaml
	- `.ocamlinit`
![[cs134b/ocamlinit|.ocamlinit]]
	- `echo "version = `ocamlformat --version`" > .ocamlformat`
![[cs134b/ocamlformat|.ocamlformat]]

5. Настройка VSCode:
	- `.vscode/extensions.json` (добавлены расширения для embedded-разработки)
		![[cs134b/extensions]]
	- `.vscode/settings.json`
		![[cs134b/settings]]

6. Создание `dune-project` (если проект создаётся с нуля)
	```sh
	$ dune init project cs134b
	```
	- перенесите и отредактируйте `dune-project`
		![[cs134b/dune-project]]
7. `lib/dune`
	- каталог для библиотек и исходного кода на OCaml
		![[cs134b/dune]]
8. далее мы будем генерировать исходный код на [[Cpp/C++|C++]]:
	```
	mkdir {lib,inc,src}
	touch Makefile
	touch CMakeLists.txt
	touch CMakePresets.json
	touch lib/cs134b.ini inc/cs134b.hpp src/cs134b.cpp
	```
9. проект управляется через использование GNU make
	- Makefile
		![[cs134b/Makefile]]
