# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2015/07/28 - 10:31:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Matrizes
# -----------------------------------------------------------------------------

#matrix() - esta � a fun��o

matrix(c(1.72, 1.5, 60, 70),
       ncol = 2)

xx = c(1.72, 1.5, 60, 70)
xx

matrix(xx,
       ncol = 2)

matrix(xx,
       nrow = 2)
       
matrix(xx,
       nrow = 2,       
       byrow = TRUE)

m = matrix(c(1, 2, 3, 4),
            nrow = 2)
m
m[1, 2]
m[2, 2]
m[,2]

m[,2]

is.matrix(m)

# O produto matricial:
A = matrix(seq(1, 4),
           ncol = 2)
A

B = matrix(seq(1, 6),
           nrow = 2)
B
dim(B)

CC = matrix(seq(1, 9),
            nrow = 3)
CC

A %*% B  # Multiplica��o entre matrizes
A %*% CC # Erro, dimens�es n�o compat�veis
B %*% A

# O determinante de uma matriz:
det(A)
det(B)  # Erro, a matriz n�o � quadrada

# A transposta de uma matriz:
t(A)
t(B)

# Uma matriz diagonal:
diag(A)
diag(B)

# Comandos cbind e o rbind para criar matrizes:
c(1, 8)
c(3, 4)

cbind(c(1, 8),
      c(3, 4))  # combina dois vetores em forma de coluna

rbind(c(1, 3, 7),
      c(2, 4, 9))  # combina dois vetores em forma de linha

rbind(c(1, 3, 7),
      c(2, 4))  # modo equivocado

rbind(c(1, 3, 7),
      c(2, 4, NA))

# A inversa de uma matriz:
solve(A)
solve(B)  # Erro, a matriz n�o tem inversa simples

# Algumas fun��es interessantes para se aplicar � matrizes
colSums(A)

rowSums(A)

colMeans(A)

rowMeans(A)

sum(A[, 1])

sum(A[, 2])

rownames(A) = c('DCET',
                 'DCAA')
A

colnames(A) = c('Estat�stica',
                 'Agronomia')
A

# -----------------------------------------------------------------------------
# Exerc�cios
# ----------------------------------------------------------------------------- 
# 1. Gere a mesma matriz 3x3, de 3 maneiras diferentes, com valores inseridos por voc�
# 2. Crie uma matriz que indique o n�mero de graduados, p�s graduados e doutores de uma universidade, de acordo com as �reas Economia, Sociologia, e Biomedicina.
# 3. Numa pesquisa, um aluno observou que a massa dos fungos variava de acordo com o pH e tipo substrato utilizado no seu meio. Os dados observados foram:        pH=4       pH=6        pH=8
#   Substrato A   0,23       0,68        0,47
#   Substrato B   0,87       0,88        0,75
#   Substrato C   0,11       0,11        0,15
#   Crie uma matriz com esses dados, nomeie as linhas e colunas, e obtenha o valor m�dio da massa dos fungos, de acordo com o pH, e de acordo com o tipo de substrato
# 4. A partir da matriz obtida na quest�o 3, obtenha apenas os valores maiores que 0,5 e calcule a m�dia
# 5. A partir da matriz obtida na quest�o 3, altere a massa pesada para o substrato C, no pH=6 para 0,13, supondo que o pesquisador tenha anotado errado o valor. Ap�s alterado, recalcule o valor m�dio naquela faixa de pH e naquele substrato 
# 6. Fa�a a multiplica��o das matrizes A e B, e descubra se det(A)*det(B) � igual a det(A*B)
#    A= 1     2               B=  -1       3
#       3     4                    4       2
# 7. De acordo com a matriz obtida a partir da multiplica��o de A*B na quest�o 6, obtenha a diagonal, a matriz inversa (se poss�vel), e a matriz transposta

