# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 18:33:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Importando base de dados
# -----------------------------------------------------------------------------
getwd()  # Para saber em qual diretório o R está direcionado

# Direcionando o R para o diretório onde está as bases de dados
#setwd('c:\\Users\\ivan\\Desktop\\CursoR\\Dados') - windows

# Selecionando de qualquer arquivo. No caso de planilha eletrônica.
dad1 = readClipboard() #Somente para windows!

dad1 = read.table(file = 'clipboard',
                  sep = '\t',
                  header = TRUE)
dad1
summary(dad1)

# Em formato .txt (Eu acho o melhor formato, pois é simples e sem complicações)
dad3 = read.table('Golf.txt',
                  h = T)
dad3

# Importanto uma base de dados colocando o endereço do diretório diretamente.
dad4 = read.table('\\Users\\ivan\\Desktop\\CursoR\\Dados\\NCP.txt',
                  h = T)
dad4

# Escolhendo a base de dados de maneira interativa. Obs: Apenas em formato '.txt'
dad5 = read.table(file.choose(),
                  header = T)

# Em formato .xls ou .xlsx do Excel.
library(xlsx) # Verifique se o JAVA está instalado na máquina. Detalhe: Se seu sistema for 64 bits, o java deve ser 64 para funcionar.
dad6 = read.xlsx("dados experimento.xlsx",
                  sheetName='2')
summary(dad6)

# Ordenando a base de dados
iris

with(iris,
     iris[order(Species), ])

with(iris,
     iris[rev(order(Species)), ])

with(iris,
     iris[rev(order(Species, Sepal.Length, Sepal.Width)), ])

# Utilizando a função subset
modatual = subset(iris,
                  Species == 'setosa')
modatual

summary(modatual)

modmean = subset(iris,
                 Sepal.Length > mean(Sepal.Length))
modmean

summary(modmean)

# -----------------------------------------------------------------------------
# Salvando os objetos que foram executados
# para não precisar rodar o script novamente!
# -----------------------------------------------------------------------------
save.image('CursoR.RData')

load('\\Users\\ivan\\Desktop\\CursoR\\CursoR.RData') # Para carregar o que foi feito e executado.

# -----------------------------------------------------------------------------
# Salvando os resultados
# -----------------------------------------------------------------------------
sink('analysis.doc',
     type = 'output')

summary(iris)

media = mean(iris$Sepal.Length)
media

sink()

# -----------------------------------------------------------------------------
# Salvando matrizes e data.frames em excel
# -----------------------------------------------------------------------------
tabsimp = rep(c('Mulheres',
                'Homens'),
              c(20, 12)) 
tabsimp1 = table(tabsimp)

write.table(tabsimp1,           # O objeto a ser salvo
            'tabsimp.xls',     # O nome do arquivo
            row.names = FALSE, # Com nome das linhas???
            quote = FALSE)     # Com aspas??

write.table(modmean,
            'modmean.xls',
            row.names = FALSE,
            quote = FALSE,
            sep = '\t')        # Separar as colunas