---
## Front matter
title: "Шаблон отчёта по лабораторной работе №5"
author: "Мугари Абдеррахим , НКАбд-03-22"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы :

В пятой лабораторной работе мы рассмотрим, как освоить процедуру компиляции и сборки программ, написанных на ассемблере nasm.

# Выполнение лабораторной работы :

## Программа Hello world! :

- В этом разделе мы хотели создать программу, которая выводит строку "Hello world!" но на языке ассемблера nasm.
- Вот почему мы начали с рекурсивного создания нового каталога "*~/work/arch-pc/lab05*". (рис. [-@fig:1])

![Ресунок 1](image/1.png){#fig:1 width=100% }


\
\
\
\
\

- После этого мы создали текстовый файл в формате .asm, затем открываем только что созданный файл с помощью текстового редактора gedit.
(рис. [-@fig:2])

![Ресунок 2](image/2.png){#fig:2 width=100%}

- После этого мы добавили код сборки, который выводит "**Hello world!**" в файл *hello.asm*. (рис. [-@fig:3])

![Ресунок 3](image/3.png){#fig:3 width=80% }


## Транслятор NASM :

- На этом этапе, используя переводчик NASM, мы смогли скомпилировать или перевести код в объектный код, который создал другой файл с форматом **.o**. (рис. [-@fig:4])

![Ресунок 4](image/4.png){#fig:4 width=100% }

- Используя команду **ls**, мы проверили работу, проделанную переводчиком, и обнаружили, что объектный файл был создан с тем же именем, что и текстовый файл.  

## Расширенный синтаксис командной строки NASM :

- Здесь мы запустили полную команду NASM и проверили выходные файлы, которые дала нам.Разница заключалась в том, что с помощью полной команды нам нужно указать имя объектного файла и список файлов, и это то, что получилось после проверки с помощью запятой **ls**. (рис. [-@fig:5])

![Ресунок 5](image/5.png){#fig:5 width=100% }

## Компоновщик LD :

- На этом шаге и с помощью компоновщика с командой **ld** мы смогли получить исполняемый файл, обработав объектный файл. Затем,используя команду **ls**, мы проверили, что файл был создан. (рис. [-@fig:6])

![Ресунок 6](image/6.png){#fig:6 width=100% }

- Затем мы проверили, что можем присвоить исполняемому файлу любое имя, а не только то же имя, что и объектному файлу, как показано с помощью команды **ls**. (рис. [-@fig:7])

![Ресунок 7](image/7.png){#fig:7 width=100% }

- Исполняемый файл имеет имя "main", а для объектного файла - "obj".

## Запуск исполняемого файла :

- На этом шаге все, что мы сделали, это запустили исполняемый файл. (рис. [-@fig:8])

![Ресунок 8](image/8.png){#fig:8 width=100% }

## Выводы по результатам выполнения заданий :

- В этой лабораторной работе мы освоили, как скомпилировать текстовый файл, написанный на языке ассемблера NASM, в объектный файл, затем получить оправдание, и все это ради создания программы, которая печатает знаменитое предложение "**Hello world!**"

# Задание для самостоятельной работы :

1. В каталоге ~/work/arch-pc/lab05 мы создали копию для файла **hello.asm** и присвоили ему имя **lab05**. (рис. [-@fig:9])

![Ресунок 9](image/10.png){#fig:9 width=80% }

2. Используя текстовый редактор **gedit**, мы изменили текстовый файл, содержащий ассемблерный код, чтобы программа выводила мое имя и фамилию "Mougari Abderrahim".

![Ресунок 10](image/11.png){#fig:10 width=100%}

\
\
\
\

### листинг написанной программы :
SECTION .data\

nfname:	DB 'Mougari Abderrahim',10\
\

nfnameLen: EQU $-nfname\
SECTION .text\
GLOBAL _start\
	
_start:\
mov eax,4\
mov ebx,1\
mov ecx,nfname\
mov edx,nfnameLen\
int 80h\
\
mov eax,1\
mov ebx,0\
int 80h\

3. После написания кода e скомпилировал код в объектный файл после чего получил исполняемый файл с помощью компоновщика. (рис. [-@fig:11])

![Ресунок 11](image/12.png){#fig:11 width=100%}

- Затем мы запустили исполняемый файл. (рис. [-@fig:12])

![Ресунок 12](image/13.png){#fig:12 width=100%}

4. Здесь мы скопировали оба **hello.Asm** и **lab5.asm** в ваш локальный репозиторий. (рис. [-@fig:13])

![Ресунок 13](image/14.png){#fig:13 width=100%}

- Наконец, мы загрузили все файлы в удаленный репозиторий. (рис. [-@fig:14])

![Ресунок 14](image/15.png){#fig:14 width=100%}

## Выводы по результатам выполнения заданий :

- В этих упражнениях мы применили навыки, полученные в ходе лабораторной работы, в ходе которой получили более глубокое представление об именах регистров и о том, как выделить для них память.


# Выводы, согласованные с целью работы :

- В шестой лабораторной работе мы можем получить практические навыки по созданию компиляции и обработке программы с использованием языка ассемблера Nasm.



