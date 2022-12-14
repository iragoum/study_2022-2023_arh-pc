---
## Front matter
title: "Шаблон отчёта по лабораторной работе №8"
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

В восьмой лабораторной работе мы узнаем о команде условных и безусловных переходов, делая это, мы освоим использование переходов, а также познакомимся со структурой файла листинга.

# Выполнение лабораторной работы :

##  Реализация переходов в NASM :

1. Здесь мы начали с создания, а затем переместились в восмой каталог лаборатории "*~/work/arch-pc/lab08*", после чего мы создали файл "**lab8-1.asm**". (рис. [-@fig:1])

![Ресунок 1](image/1.png){#fig:1 width=100% }

2. После этого мы заполнили файл **.asm** кодом программы, отображающей значение регистра **eax**. (рис. [-@fig:2])

![Ресунок 2](image/2.png){#fig:2 width=100% }

- Затем мы скомпилировали файл, создали исполняемый файл и запустили программу, все это после перемещения файла **in_out.asm** в тот же каталог, где находится **lab8-1.asm**. (рис. [-@fig:3])

![Ресунок 3](image/3.png){#fig:3 width=100% }

- После этого мы изменили код в листинге.(рис. [-@fig:4])

![Ресунок 4](image/4.png){#fig:4 width=100% }

- Затем мы снова скомпилировали файл и создали исполняемый файл. (рис. [-@fig:5])

![Ресунок 5](image/5.png){#fig:5 width=100% }

- Затем мы снова изменили код в листинге ,чтобы вывод программы был следующим:\

user@dk4n31:~$ ./lab8-1\
Сообщение № 3\
Сообщение № 2\
Сообщение № 1\
user@dk4n31:~$\

(рис. [-@fig:6]) (рис. [-@fig:7])

![Ресунок 6](image/6.png){#fig:6 width=100% }

![Ресунок 7](image/7.png){#fig:7 width=100% }

3. После этого мы создали файл **lab8-2.asm**, в который мы добавим код нашей следующей программы (рис. [-@fig:8])

![Ресунок 8](image/8.png){#fig:8 width=100% }

- После этого мы заполнили файл необходимым кодом для Программы, которая определяет и выводит на экран наибольшую из 3 целочисленных переменных: A,B и C (рис. [-@fig:9])

![Ресунок 9](image/9.png){#fig:9 width=100% }

- мы скомпилировали файл, создали исполняемый файл и запустили его. (рис. [-@fig:10])

![Ресунок 10](image/10.png){#fig:10 width=100% }

## Изучение структуры файлы листинга :

1. Здесь и с помощью команды *nasm -f elf -l lab8-2.list lab8-2.asm* мы создали файл листинга файла **lab8-2.asm**, затем мы открыли файл с помощью **mcedit**.(рис. [-@fig:11])

![Ресунок 11](image/11.png){#fig:11 width=100% }


2. мы выбрали эти три строки и пытаемся объяснить каждую из них

![Ресунок 12](image/11_1.png){#fig:12 width=100% }

- Здесь в 18-й строке мы переместили значение адреса переменной **B** в регистр **ecx** , после этого мы поместили значение **10** в регистре **edx**, который определяет размер переменной B с помощью подпрограммы **sread** и, наконец, мы вызвали подпрограмму **sread**

3. мы открыли программный файл lab 8-2.asm и удалили один операнд в любой инструкции с двумя операндами. Мы выбрали строку под номером 27.(рис. [-@fig:13])

![Ресунок 13](image/13.png){#fig:13 width=100% }

- В результате изменений был изменен файл листинга , в котором мы получили ошибку, объясняющую отсутствующий операнд, и файлы не были созданы.

## Выводы по результатам выполнения заданий :

- Во время лабораторной работы мы узнали, как выполнять условные и безусловные переходы, как читать файл листинга.

# Задание для самостоятельной работы :

## Написание программы нахождения наименьшей из 3 целочисленных переменных :

**Мой вариант : 13**

- Мой код : (рис. [-@fig:14])

![Ресунок 14](image/15.png){#fig:14 width=60% }

- Вывод кода :(рис. [-@fig:15])

![Ресунок 15](image/17.png){#fig:15 width=100% }

## Написание программы, которая выполняет математическую операцию в зависимости от значения введенных переменных :

- Мой код : (рис. [-@fig:16])

![Ресунок 16](image/18.png){#fig:16 width=60% }

- Вывод кода :(рис. [-@fig:17])

![Ресунок 17](image/19.png){#fig:17 width=100% }


## Выводы по результатам выполнения заданий :

- В этой части мы смогли применить наш полученный навык понятным способом, заставив программу вычислять конечное значение в зависимости от значений введенных переменных с использованием условных переходов.




# Выводы, согласованные с целью работы :

- В восьмой лаборатории  мы в основном узнали, как использовать условные и безусловные переходы в NASM, как читать структуру файла листинга.
