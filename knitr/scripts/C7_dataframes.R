# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2015/07/28 - 11:13:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Data Frames
# -----------------------------------------------------------------------------
x = rnorm(10,
          10,
          2)

y = letters[1:10]

data.frame()
dF = data.frame(x,
                 y)
dF

# O comando str informa (retorna) a estrutura de um objeto e a parte dos dados
# que cont�m:
str(dF)

# A instru��o 'summary' sumariza um objeto (aqui, um frame, mas vai bem com
# quase todos objetos):
summary(dF)

# Pode-se ter acesso aos dados das colunas de diversas maneiras:
dF$x
h = dF$x
h

dF$y

dF[ ,1]
dF[['x']]
dF[['y']]

dim(dF)

names(dF)

row.names(dF)

# Pode-se mudar o nome das linhas ou das colunas:
names(dF) = c('ivan',
               'joao')
dF

row.names(dF) = letters[1:nrow(dF)]

row.names(dF) = c('Br','Fr','Ba','KK','LL','DR','QA','WW','FF', 'NN')

dF$z = seq(1, 10)

names(dF) = c('r',
               't',
               'zz')
dF

# Pode-se ter acesso direto as colunas de um frame usando o comando attach().
# Obs: N�o deve esquecer-se de destac�-lo detach() quando terminar!
attach(dF)
mean(r)
mean(zz)

detach(dF)

# Op��o melhor
with(dF,
     mean(zz))

with(dF,
     sort(x))

# -----------------------------------------------------------------------------
# Exerc�cios
# ----------------------------------------------------------------------------- 
# 1. Crie um dataframe expondo os nomes de 10 pacientes de uma academia, constando peso e altura de cada um, e obtendo tamb�m a m�dia desses dois par�metros
# 2. Uma soci�loga deseja estudar o perfil dos alunos em um determinado curso da universidade. Monte um dataframe com os seguintes dados de cada pessoa: nome, ra�a, entrada ou n�o por a��o afirmativa, renda mensal familiar. (Supor 15 alunos)
# 3. Um bi�logo deseja avaliar um tipo de r�ptil. Monte um data frame que contenha a cor de cada r�ptil estudado(verde, marrom ou preto), o tamanho, e se � macho ou f�mea. Responda o tamanho m�dio, a quantidade de r�pteis por cores e a quantidade de machos e de f�meas. (Suponha que 10 r�pteis estejam sendo estudados)
