# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 10:19:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Vetores
# -----------------------------------------------------------------------------
# Algumas das diversas formas de criar:

#c() - é uma função

c(1, 2, 3, 4, 100)

1:6

2:10

#seq()

seq(1,10,by=2)
             
seq(1,
   10,
   by = 2)

seq(5,
    12)

seq(1,
    2,
    length = 10)

seq(0,
    100,
    by = 10)

seq(13,
    5)

seq(10,
    1,
    by = -2)

letters
LETTERS

c('coca', 'pepsi')
c("coca", "pepsi")

y = scan()#interativamente!

# Algumas formas de indexar (índices):
x = seq(1,
         10,
         by = 2)
x

x[3:5]
x[seq(1,5,by=2)]
x[c(1,2,5)]

x[4:8]

x[c(2, 4:5)]

x[c(1, 3, 9)]

x[-c(1, 4:5)]

# Dar nomes aos componentes de um vetor:
w = c(80, 73, 50)  # a instrução entre () é interpretada e ecoada no console
w
names(w) = c('joão',
             'ivan',
             'maria')

w

j = c(10,
       'ivan')
j
is.numeric(j)

k = c('ivan',10)
k

# Aritimética lógica
y = c(2,4,5,8,1,10)
y

y > 5

y[y>5]

all(y < 6)

any(y == 5)

any(y != 3)

any(y > 5)


# | = ou
y[y < 4 | y > 8]

# & = e
y[y > 4 & y < 8]

y1 = y[y <= 5]
y1

# -----------------------------------------------------------------------------
# Exercícios
# ----------------------------------------------------------------------------- 
# 1. Armazene um vetor de -500 a 500, contando de 3 em 3
# 2. Divida o vetor criado na questão 1 por -3
# 3. Do vetor criado na questão 1, armazene apenas os negativos
# 4. Armazene um vetor que vá de 8 a 15, de 3 maneiras diferentes
# 5. Crie um vetor que armazene o peso de 5 pessoas e os seus respectivos nomes
# 6. Ainda sobre o vetor criado na questão 5, descubra o se existe alguém com peso maior ou igual a 60kg, e caso, positivo, os armazene em um novo vetor



