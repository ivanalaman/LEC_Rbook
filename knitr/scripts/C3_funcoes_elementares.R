# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2017/04/24 - 22:13:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Ver objetos e pacotes carregados no console
# -----------------------------------------------------------------------------
objects()
search()
library(MASS)
# -----------------------------------------------------------------------------
# Criar e remover um determinado objeto ou todos os objetos do console
# -----------------------------------------------------------------------------
a = 100
a

b = 2
objects()

rm(ivan.bezerra)

ivan.bezerra

objects()

rm(list = ls()) # remove todos os objetos vis�veis (n�o iniciados por .)

# Imprimir no console uma mensagem ou o valor de uma vari�vel:
print('Teste:')

print('ivan')

ivan = 10     # ivan recebe o valor 10

print(ivan)

x = 10        # x recebe o valor 10
x

print(x)

# -----------------------------------------------------------------------------
# Valores infinitos e faltantes
# -----------------------------------------------------------------------------
3/0
0/0

# -----------------------------------------------------------------------------
# Exerc�cios
# -----------------------------------------------------------------------------
# 1. Crie e execute os seguintes objetos: aa = 1, bb = 2, cc = 3, dd = 4, ee = 5. Qual comando voc� utiliza para ver os objetos criados? Remova os objetos criados e utilize novamente o comando para ver os objetos. Qual � o resultado?




