# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2015/07/28 - 11:04:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Arrays
# -----------------------------------------------------------------------------
array()

ar = array(letters[1:24],
           c(2, 4, 3))  # 2 linhas, 4 colunas, 3 dimens�es
ar

ar[1, 1, 1]  # ar[linha, coluna, dimens�o] -> ar(x, y, z)

ar[1, 1, 2]

ar[1, 2, 3]

ar[1, 2:4, 1]

# Nomeando um array
dimnames(ar) = list(1:2,#tem que ter comprimento igual ao n�mero de linhas
                    1:4,#tem que ter comprimento igual ao n�mero de colunas
                    c(list('A'),list('B'),list('C')))

