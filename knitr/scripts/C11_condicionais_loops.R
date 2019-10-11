# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 13:41:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Loop for:
# -----------------------------------------------------------------------------
var = 0
for(i in 1:5){
      var[i] = i
}
var

vv = list()
for(i in 1:5){
      vv[[i]] = i
}
vv

meudados = data.frame(v1=rnorm(100),
                      v2=rnorm(100),
                      v3=rnorm(100),
                      v4=rnorm(100))
medias = NULL
for(i in 1:dim(meudados)[2]){

  medias[i] = mean(meudados[,i])
  names(medias)[i] = names(meudados)[i]

}
medias

# -----------------------------------------------------------------------------
# Loop while:
# -----------------------------------------------------------------------------
z = 0
while (z < 5) {
  z = z + 2
  print(z)
}

# -----------------------------------------------------------------------------
# Loop repeat:
# -----------------------------------------------------------------------------
z = 0
repeat {
  z = z + 2
  print(z)
  if (z > 4){
    break()
  }
}

# -----------------------------------------------------------------------------
# Funções
# -----------------------------------------------------------------------------
f = function(x) x/10 + 1

f(x = 10)
f(10)  # Chamada alternativa
f(4)

f = function(x) {
  x/10 + 1
}

# Com mais de uma variável:
f1 = function(x, y) {
  x/10 + 1 - y
}

f1(10, -1)
f1(y = -1, x = 10)

# Criando uma função que se chama média
media = function(x) {
  sum(x)/length(x)
}

media(rnorm(100))

# No fim dos argumentos, pode haver três pontos, representando todos os
# argumentos não especificados:
cv = function(x) {
  sd(x)/mean(x) * 100
}

var1 = rnorm(100)
cv(var1)

var1[50] = NA
var1

cv(var1,na.rm=T)

cv1 = function(x, ...) {
  sd(x, ...) / mean(x,...) * 100
}

cv1(var1, na.rm = TRUE)

# Elaborando uma função, e carregando-a para posterior uso!
source('cv.r')

cv(rnorm(100,
         10,
         2))
