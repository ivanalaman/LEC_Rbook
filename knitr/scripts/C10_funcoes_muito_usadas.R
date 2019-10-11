# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 13:30:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Uso da função sample
# -----------------------------------------------------------------------------
alunos = c('joão',
            'maria',
            'pedro',
            'ivan',
            'cabeçudinho',
            'ciclano')

sample(alunos,
       size = 3)

sample(alunos,
       size = 7)

sample(alunos,
       size = 5,
       replace = T)  # Com reposição

args(sample)  # Retorna os argumentos de uma função

# -----------------------------------------------------------------------------
# Uso da função paste
# -----------------------------------------------------------------------------
sobrenome = c('Bezerra',
               'Faria',
               'Correa',
               'Jelihovisch')

nome = c('Ivan',
          'José',
          'Fábio',
          'Enio')

paste(nome,
      sobrenome)

paste(letters,
      1:26,
      sep = '')

paste(LETTERS,
      1:26,
      sep = '_')

paste(sobrenome,
      collapse = '')

# -----------------------------------------------------------------------------
# Uso da função rep
# ----------------------------------------------------------------------------- 
rep(2,
    5)

rep('a',
    5)

rep(c(1,2),
    5)

rep(c(1,2),
    c(5,5))

rep(c(1,2),
    c(4,5))

# -----------------------------------------------------------------------------
# Outras funções
# -----------------------------------------------------------------------------  
x = c(1.73, 1.43, 2.1, 4.3, 5.1)
x

length(x)       # Número de elementos

min(x)

max(x)

sort(x)         # Ordena os valores dentro de um vetor

sort(x,
     decreasing = TRUE)

args(sort)      # Mostra os argumentos da função

median(x)       # Mediana

mean(x)         # Média

var(x)          # Variância

sd(x)           # Desvio padrão (standard deviation)

sqrt(var(x))    # raiz quadrada

sum(x)          # Somatório

round(x)        # Arrendondar

round(x,
      digits = 1)

round(x,
      1)

log(10)         # Logaritmo na base e

log(10,
    base = 10)

exp(1)          # Número neperiano elevado a x

sin(1)          # Seno

cos(1)          # coseno

tan(1)          # tangente

factorial(3)    # fatorial

pi              # 3,14....
