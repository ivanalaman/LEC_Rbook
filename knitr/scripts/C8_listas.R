# =============================================================================
# Título : Introdução ao ambiente computacional estatatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 11:23:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Listas
# -----------------------------------------------------------------------------
# Gerando listas
#list() esta é a função
l1 = list(c(2, 6, 8),
           matrix(seq(1, 4),
                  ncol = 2),
           c('ivan'))
l1

dad1 = data.frame(var1 = rnorm(10),
                  var2 = rnorm(10))
dad2 = data.frame(var3 = letters[1:4],
                  var4 = rnorm(4))

l2 = list(s1 = dad1,
          s2 = dad2,
          s3 = 1:10,
          s4 = matrix(1:12,
                      nr = 3,
                      nc = 4))

# Indexando listas
l1[[1]]
l1[[2]][1, 2]
l1[[1]][3]

l2[[2]]
l2$s2
l2$s2[['var3']]
l2$s2[, 2]

# Nomeando uma lista
names(l1) = c('A','B','C')

