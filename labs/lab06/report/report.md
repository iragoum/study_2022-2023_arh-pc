---
## Front matter
title: "Шаблон отчёта по лабораторной работе №6"
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

- На шестой лабораторной работе мы научимся использовать "Midnight commander" и освоим инструкции **mov** и **int** языка ассемблера.

# Выполнение лабораторной работы :

1. На этом этапе мы запустили **mc**. (рис. [-@fig:1])

![Ресунок 1](image/1.png){#fig:1 width=100% }

2. После этого мы переместились в каталог **~/work/arch-pc**. (рис. [-@fig:2])

![Ресунок 2](image/2.png){#fig:2 width=100% }

3. После этого и с помощью клавиши **f7** мы создали новую папку **lab06**. (рис. [-@fig:3])

![Ресунок 3](image/3.png){#fig:3 width=100% }

4. Используя строку ввода и сенсорную команду, мы создали файл **lab6-1.asm**. (рис. [-@fig:4])

![Ресунок 4](image/4.png){#fig:4 width=100% }

5. используя функциональную клавишу **F4**, мы открыли файл lab6-1.asm. (рис. [-@fig:5])

![Ресунок 5](image/5.png){#fig:5 width=100% }

6. Мы скопировали текст программы из **листинга 6.1** в файл **asm**, затем сохранили изменения и закрыли файл. (рис. [-@fig:6])

![Ресунок 6](image/6.png){#fig:6 width=100% }

7. Используя функциональную клавишу **F3**, мы открыли файл **lab6-1.asm** для просмотра. и мы проверили, что файл содержит текст программы. (рис. [-@fig:7])

![Ресунок 7](image/7.png){#fig:7 width=100% }

8. Затем мы перевели текст программы **lab6-1.asm** в **объектный файл** . Выполнил разметку объектного файла и запустил полученный исполняемый файл, где программа выводит строку '*Введите строку:*' и ожидает ввода с клавиатуры. По запросу, в этот момент мы ввели наше имя и фамилию. (рис. [-@fig:8])

![Ресунок 8](image/8.png){#fig:8 width=100% }

9. После этого мы загрузили файл **in_out.asm** из **ТУИСА** и с помощью **mc** мы смогли переместить файл в правильный каталог. (рис. [-@fig:9])

![Ресунок 9](image/10.png){#fig:9 width=100% }

10. Используя функциональную клавишу **f5**, мы создали копию файла **lab6-1.asm** с именем **lab6-2.asm**. (рис. [-@fig:10])

![Ресунок 10](image/11.png){#fig:10 width=100% }

11. После этого мы исправляем текст программы в файле **lab6-2.asm**, используя подпрограммы из внешнего файла **in_out.asm**. (рис. [-@fig:11])

![Ресунок 11](image/12.png){#fig:11 width=100% }

12. Затем мы перевели текст программы **lab6-2.asm** в **объектный файл** . Выполнил разметку объектного файла и запустил полученный исполняемый файл. (рис. [-@fig:12])

![Ресунок 12](image/13.png){#fig:12 width=100% }

13. На этом шаге мы меняем функцию **sprintLF** на функцию **sprint** Создал исполняемый файл, и разница заключалась в том, что эта функция изменяет входные данные на новую строку. (рис. [-@fig:13]) (рис. [-@fig:14])

![Ресунок 13](image/14.png){#fig:13 width=100% }

![Ресунок 14](image/15.png){#fig:14 width=100% }


## Выводы по результатам выполнения заданий :

- В ходе лабораторных работ мы узнали, как использовать **midnight commander**, и мы овладели навыками использования инструмента **nasm**.

# Задание для самостоятельной работы :

## Создание программы без использования внешнего файла :

- В этой части мы должны были сделать копию файла **lab6-1.asm**, а затем мы должны были создать программу, которая запрашивает ввод строки, затем позволяет выполнить ввод с клавиатуры и, наконец, отобразить введенную строку, но без использования внешнего файла **in_out.асм**. (рис. [-@fig:15]) (рис. [-@fig:16])

![Ресунок 15](image/16.png){#fig:15 width=100% }


![Ресунок 16](image/222.png){#fig:16 width=100% }

## создание программы с использованием внешнего файла:

- в этой части мы попытались выполнить ту же программу, но с использованием внешнего файла.(рис. [-@fig:17]) (рис. [-@fig:18])

![Ресунок 17](image/17.png){#fig:17 width=100% }


![Ресунок 18](image/18.png){#fig:18 width=100% }



## Выводы по результатам выполнения заданий :

В этой части мы узнали, как создавать и редактировать программы с помощью подпрограмм и как управлять с помощью языка ассемблера.




# Выводы, согласованные с целью работы :

- На шестой лабораторной работе мы научимся использовать "Midnight commander" и освоим инструкции **mov** и **int** языка ассемблера и мы узнали, как создавать и редактировать программы с помощью подпрограмм и как управлять с помощью языка ассемблера.



