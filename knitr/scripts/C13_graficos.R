# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 16:51:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Gráficos
# -----------------------------------------------------------------------------
# Será utilizado a library default do R, a 'Graphics'. Existem outras
# bibliotecas, como: lattice, ggplot2, etc. 
x = seq(1, 10)
x
y = 3 + x + rnorm(10)
y

plot(y ~ x)
plot(x, y)

plot(y ~ x,
     main = 'Exemplo 1',
     xlab = 'Variável x',
     ylab = 'Variável y',
     col = 'blue',
     type = 'l')

colors()  # Descobrir as cores disponíveis

demo(colors)

z = 3 + 1.2 * x + rnorm(10)

plot(y ~ x,
     main = 'Exemplo 1',
     xlab = 'Variável x',
     ylab = 'Variável y',
     col = 'blue',
     type = 'l')

points(z ~ x,
       col = 'red',
       type = 'l')

legend('topleft',
       c('1999',
         '2000'),
       col = c('blue',
               'red'),
       lwd = rep(1,
                 2))

text(2,
     10,
     expression(y == a + b * x))

text(2,
     9,
     expression(R^2 == 70 ~ '%'))

text(6,4,"Juliana Paes eu te amo")     

plot(y ~ x,
     axes = FALSE)  # Sem os eixos

axis(1)  # Eixo x
axis(2)  # Eixo y

plot(y ~ x,
     ylim = c(0, 15),
     xlim = c(0, 20))

# Adicionando linhas ou curvas
u = 2 + x + x^2 + rnorm(10,
                         0,
                         3)
plot(u ~ x,
     main = 'Exemplo 1',
     xlab = 'Variável x',
     ylab = 'Variável y')

curve(2 + x + x^2,
      1,
      10,
      add = T,
      col = 'red')

curve(3 + x, 1, 10,
      add = T,
      col = 'blue')

lines(3 + x,
      col = 'yellow')

# Gráfico de barras
sexo = rep(c('Mulheres',
                 'Homens'),
               c(56, 12))

fumante = c(rep(c('s',
                  'n'),
                c(10, 13)),
            rep(c('s', 'n'),
                c(23, 22)))

estadocivil = c(rep(c('solteiro',
                      'casado'),
                    c(17, 6)),
                rep(c('solteiro',
                      'casado'),
                    c(20, 25))) 

tabsimp = table(sexo)
tabsimp

barplot(tabsimp)
barplot(tabsimp,col='pink')

tabcr = data.frame(sexo,
                    fumante)

barplot(table(tabcr),
        legend = T)  # Como faz para aparecer em duas colunas??

barplot(table(tabcr),
        beside = T)

n = 30 # tamanho da amostra
PopA = rnorm(n, 1.73, 0.4)
PopB = rnorm(n, 1.04, 0.6)

mediaA = mean(PopA)
mediaB = mean(PopB)
desvioA= sd(PopA)
desvioB= sd(PopB)
erroA  = desvioA/sqrt(n)
erroB  = desvioB/sqrt(n)

barplot(c(mediaA,
          mediaB),
        ylim = c(0, 2))

barplot(c(mediaA,
          mediaB),
        ylim = c(0, 2),
        names.arg = c('PopA', 'PopB'))

# Colocando os erros nas barras. Lembre-se que não tem sentindo colocar o desvio, pois a média +- desvio não quer dizer nada!

gr = barplot(c(mediaA,
                mediaB),
              ylim = c(0, 3),
              names.arg = c('A', 'B'),
              ylab = 'Altura (m)')

arrows(gr,
       c(mediaA - erroA*1.96,
         mediaB - erroB*1.96),
       gr,
       c(mediaA + erroA*1.96,
         mediaB + erroB*1.96),
       length = 0.1,
       angle = 90,
       code = 3)  

tabmul = data.frame(estadocivil,
                     sexo,
                     fumante)
tabmul

tabmul1 = with(tabmul, table(sexo, fumante, estadocivil))
tabmul1

plot(tabmul1)  # Plota a área proporcional as categorias

plot(tabmul1,
     xlab = 'Sexo',
     ylab = 'Fumante',
     main = '')

proptab = prop.table(tabmul1,margin=2) 
plot(proptab)

# Gráfico em pizza
pie(tabsimp)

tabsimp1 = prop.table(tabsimp) * 100

pie(tabsimp1)

text(-0.4,
     -0.1,
     '82,35%')

text(0.4,
     0.3,
     '17,65%')

# Podemos colar as percentagens interativamente. Vejam:
pie(tabsimp1)
text(locator(),c('82,35%','17,65%'))# Assim que executar esta linha, clique no gráfico as áreas onde deseja colocar os valores. Em seguida, clique com o botão direito do mouse para finalizar.

# Box-plot
xx = rnorm(100)
boxplot(xx)

boxplot(xx,
        horizontal = TRUE)

yy = rpois(50, 3)
boxplot(yy,
        horizontal = TRUE)

xx1 = rnorm(100)
xx1[67] = 10
boxplot(xx1)

identify(rep(1,
             length(xx1)),
         xx1)#Clique em cima do outlier para ver em qual posição ele está na base de dados (ou vetor). Em seguida, clique com o botão direito do mouse para finalizar.

install.packages('car')
library(car)
Boxplot(xx1)

# Mais de um gráfico em uma mesma janela
y = rnorm(100)
x = rnorm(100)
par(mfrow = c(1, 2),
    mar = c(0,0,0,0))  # mfrow = c(n,p) - n: é o número de linhas; p: é o número de colunas
plot(y ~ x)
boxplot(xx)

par(mfrow = c(1, 2), bg = 'black')
plot(y ~ x,
     col = 'yellow',
     col.axis = 'yellow',
     col.lab = 'yellow',
     fg = 'yellow')

boxplot(xx,
        col = 'red',
        col.axis = 'red',
        border = 'red')

# par(mfrow=c(1,2), oma=c(1,1,1,1), # altera as larguras das margens da janela
# gráfica c(inferior,esquerda,superior,direita) mar=c(0,10,0,0))# altera as
# larguras das margens das caixas gráficas
# c(inferior,esquerda,superior,direita)

par()  # Para maiores detalhes!!

z = rnorm(100)

par(mfrow=c(2,2)) 
plot(y ~ x)
plot(z ~ x)
boxplot(xx)

layout(matrix(seq(1, 4),
              ncol = 2))
plot(y ~ x)
plot(z ~ x)
boxplot(xx)

layout(matrix(c(1, 2, 3, 3),
              ncol = 2))
plot(y ~ x)
plot(z ~ x)
boxplot(xx)

layout(matrix(c(1, 1, 2, 3),
              ncol = 2,
              byrow = T))
plot(y ~ x)
plot(z ~ x)
boxplot(xx)

# -----------------------------------------------------------------------------
# Salvando gráficos
# -----------------------------------------------------------------------------
pdf('g1.pdf')
plot(1:5, 1:5)
dev.off()

tiff('g2.tiff')
plot(1:5, 1:5)
dev.off()

tiff('g3.tiff',
     width = 250,
     height = 250)

plot(1:5, 1:5)
dev.off()

?tiff # Para maiores detalhes