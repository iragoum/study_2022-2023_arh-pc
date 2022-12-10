---
## Front matter
title: "Шаблон отчёта по лабораторной работе №9"
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

В девятой лабораторной работе мы научимся писать программы с циклами и обработкой аргументов с помощью командной строки.

# Выполнение лабораторной работы :

##  Реализация циклов в NASM :

1. Здесь мы начали с создания каталога для программаы лабораторной работы № 9, а затем переместились в девятой каталог лаборатории "*~/work/arch-pc/lab09*", после чего мы создали файл "**lab9-1.asm**". (рис. [-@fig:1])

![Ресунок 1](image/1.png){#fig:1 width=100% }

2. Затем мы заполнили код нашей программы в файле **lab9-1.asm**.(рис. [-@fig:2])

![Ресунок 2](image/2.png){#fig:2 width=100% }

- После этого мы скомпилировали файл, создали исполняемый файл и проверили его работу.(рис. [-@fig:3])

![Ресунок 3](image/3.png){#fig:3 width=100% }

- Мы внесли изменения в наш код, а затем создали исполняемый файл.(рис. [-@fig:4])

![Ресунок 4](image/4.png){#fig:4 width=100% }

- Регистр **ecx** принимает пять значений, которые являются: **9,7,5,3,1**, мы можем заметить, что количество циклов не соответствует числу, введенному пользователем.

- На этот раз мы использовали **стек** , и в конечном итоге количество циклов соответствует числу, которое было введено в начале.(рис. [-@fig:5])

![Ресунок 5](image/5.png){#fig:5 width=100% }

## Обработка аргументов командной строки :

1. На этом шаге мы создали файл **lab9-2.asm**, затем заполнили в нем наш код.(рис. [-@fig:6])

![Ресунок 6](image/6.png){#fig:6 width=100% }

2. После этого мы скомпилировали файл и создали исполняемый файл.(рис. [-@fig:7])

![Ресунок 7](image/7.png){#fig:7 width=100% }

- и, как вы можете видеть, на этот раз при запуске программы мы добавили в команду три аргумента, и в этом случае были обработаны три аргумента.

## Программа вычисления суммы аргументов командной строки :

1. Первым делом мы создали файл **lab9-3.asm**, затем заполнили кодом программы.(рис. [-@fig:8])

![Ресунок 8](image/8.png){#fig:8 width=100% }

2. После этого мы скомпилировали файл, затем создали исполняемый файл, ввели нужное количество аргументов и запустили prgoram.(рис. [-@fig:9])

![Ресунок 9](image/9.png){#fig:9 width=100% }

3. Затем мы изменили код, чтобы вычислить произведение аргументов командной строки.(рис. [-@fig:10])

![Ресунок 10](image/10.png){#fig:10 width=100% }

- После этого e скомпилировал код и запустил исполняемый файл.(рис. [-@fig:11])

![Ресунок 11](image/11.png){#fig:11 width=100% }


## Выводы по результатам выполнения заданий :

- В этой части работы мы узнали, как манипулировать циклами, как правильно использовать стек для написания программ


# Задание для самостоятельной работы :

- В этой части мы должны были написать программу,которая находит сумму значений функции $𝑓(𝑥)$ для $𝑥 = 𝑥_1 , 𝑥_2 , ..., 𝑥_𝑛$

1. сначала мы создали наш файл **test.asm**, где будет находиться наш код, затем мы написали программу.(рис. [-@fig:12])

![Ресунок 12](image/12.png){#fig:12 width=100% }

2. Затем мы протестировали нашу программу.(рис. [-@fig:13])

![Ресунок 13](image/13.png){#fig:13 width=100% }



## Выводы по результатам выполнения заданий :

В этой части мы узнали, как вычислить сложную математическую операцию, которая имеет функции, используя циклы и стек


# Выводы, согласованные с целью работы :

- В девятой лабораторной работе мы узнали, как использовать циклы и стек в **NASM**.
