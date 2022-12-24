---
## Front matter
title: "Шаблон отчёта по лабораторной работе №11"
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

В этой лабораторной работе мы научимся писать программы с использованием подпрограмм и познакомимся со способами отладки с использованием GDB и его основными функциями

# Выполнение лабораторной работы :

1. Здесь мы начали с создания каталога для программаы лабораторной работы №11, а затем переместились в десятой каталог лаборатории "*~/work/arch-pc/lab10*", после чего мы создали файл "**lab11-1.asm**" и "**readme.txt**". (рис. [-@fig:1])

![Ресунок 1](image/1.png){#fig:1 width=100% }

2. Затем мы заполнили код нашей программы в файле **lab10-1.asm**.(рис. [-@fig:2])

![Ресунок 2](image/2.png){#fig:2 width=100% }

- После этого мы скомпилировали файл, создали исполняемый файл и проверили его работу.(рис. [-@fig:3])

![Ресунок 3](image/3.png){#fig:3 width=100% }

3. Используя команду **chmod**, мы изменили права доступа к исполняемому файлу **lab11-1**, запретив его выполнение.(рис. [-@fig:4])

![Ресунок 4](image/4.png){#fig:4 width=100% }

- После этого мы попытались запустить исполняемый файл, но без каких-либо результатов, и это потому, что у нас нет доступа для чтения этого файла.

4. На этом шаге с помощью команды **chmod** мы изменили права доступа к файлу **lab 11-1.asm** с исходным кодом программы, добавив **права на выполнение**.После этого мы попытались выполнить файл.(рис. [-@fig:5])

![Ресунок 5](image/5.png){#fig:5 width=100% }

- Файл не был выполнен, потому что это файл с форматом **.asm **, который содержит код, но не скомпилированный.

5. На этом шаге мы предоставили доступ к файлу **readme.txt** в соответствии с имеющимся у нас вариантом (в моем случае это **13** ).(рис. [-@fig:6])

![Ресунок 6](image/6.png){#fig:6 width=100% }

## Выводы по результатам выполнения заданий :

- В этой части работы мы узнали, как работать с отладчиком GDB, и получили более близкое представление о том, как работают подпрограммы.

# Задание для самостоятельной работы :

- Здесь мы написали программу, которая работает по следующему алгоритму (рис. [-@fig:8]) :

- Вывод приглашения “Как Вас зовут?”
- ввести с клавиатуры свои фамилию и имя
- создать файл с именем name.txt
- записать в файл сообщение “Меня зовут”
- дописать в файл строку введенную с клавиатуры
- закрыть файл

![Ресунок 8](image/8.png){#fig:8 width=100% }

- Наконец, мы создали исполняемый файл и проверяем его работу. Проверьте наличие файла и его содержимого с помощью команд  **ls** и **cat**.(рис. [-@fig:9])

![Ресунок 9](image/9.png){#fig:9 width=100% }

## Выводы по результатам выполнения заданий :

- В этой части мы использовали полученные навыки для создания программ, работающих с файлами


# Выводы, согласованные с целью работы :

- В этой лабораторной работе мы узнаем, как писать программы, которые работают с файлами (создание, запись, модификация и удаление) в **Nasm**
