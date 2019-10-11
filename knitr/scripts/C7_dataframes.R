# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 11:13:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
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
# que contém:
str(dF)

# A instrução 'summary' sumariza um objeto (aqui, um frame, mas vai bem com
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
# Obs: Não deve esquecer-se de destacá-lo detach() quando terminar!
attach(dF)
mean(r)
mean(zz)

detach(dF)

# Opção melhor
with(dF,
     mean(zz))

with(dF,
     sort(x))

# -----------------------------------------------------------------------------
# Exercícios
# ----------------------------------------------------------------------------- 
# 1. Crie um dataframe expondo os nomes de 10 pacientes de uma academia, constando peso e altura de cada um, e obtendo também a média desses dois parâmetros
# 2. Uma socióloga deseja estudar o perfil dos alunos em um determinado curso da universidade. Monte um dataframe com os seguintes dados de cada pessoa: nome, raça, entrada ou não por ação afirmativa, renda mensal familiar. (Supor 15 alunos)
# 3. Um biólogo deseja avaliar um tipo de réptil. Monte um data frame que contenha a cor de cada réptil estudado(verde, marrom ou preto), o tamanho, e se é macho ou fêmea. Responda o tamanho médio, a quantidade de répteis por cores e a quantidade de machos e de fêmeas. (Suponha que 10 répteis estejam sendo estudados)
