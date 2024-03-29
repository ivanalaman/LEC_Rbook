# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2015/07/28 - 13:30:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Uso da fun��o sample
# -----------------------------------------------------------------------------
alunos = c('jo�o',
            'maria',
            'pedro',
            'ivan',
            'cabe�udinho',
            'ciclano')

sample(alunos,
       size = 3)

sample(alunos,
       size = 7)

sample(alunos,
       size = 5,
       replace = T)  # Com reposi��o

args(sample)  # Retorna os argumentos de uma fun��o

# -----------------------------------------------------------------------------
# Uso da fun��o paste
# -----------------------------------------------------------------------------
sobrenome = c('Bezerra',
               'Faria',
               'Correa',
               'Jelihovisch')

nome = c('Ivan',
          'Jos�',
          'F�bio',
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
# Uso da fun��o rep
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
# Outras fun��es
# -----------------------------------------------------------------------------  
x = c(1.73, 1.43, 2.1, 4.3, 5.1)
x

length(x)       # N�mero de elementos

min(x)

max(x)

sort(x)         # Ordena os valores dentro de um vetor

sort(x,
     decreasing = TRUE)

args(sort)      # Mostra os argumentos da fun��o

median(x)       # Mediana

mean(x)         # M�dia

var(x)          # Vari�ncia

sd(x)           # Desvio padr�o (standard deviation)

sqrt(var(x))    # raiz quadrada

sum(x)          # Somat�rio

round(x)        # Arrendondar

round(x,
      digits = 1)

round(x,
      1)

log(10)         # Logaritmo na base e

log(10,
    base = 10)

exp(1)          # N�mero neperiano elevado a x

sin(1)          # Seno

cos(1)          # coseno

tan(1)          # tangente

factorial(3)    # fatorial

pi              # 3,14....
