# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 11:04:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Arrays
# -----------------------------------------------------------------------------
array()

ar = array(letters[1:24],
           c(2, 4, 3))  # 2 linhas, 4 colunas, 3 dimensões
ar

ar[1, 1, 1]  # ar[linha, coluna, dimensão] -> ar(x, y, z)

ar[1, 1, 2]

ar[1, 2, 3]

ar[1, 2:4, 1]

# Nomeando um array
dimnames(ar) = list(1:2,#tem que ter comprimento igual ao número de linhas
                    1:4,#tem que ter comprimento igual ao número de colunas
                    c(list('A'),list('B'),list('C')))

