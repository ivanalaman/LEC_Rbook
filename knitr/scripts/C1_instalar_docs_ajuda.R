# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2017/04/22 - 09:27:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Como instalar pacotes
# -----------------------------------------------------------------------------
install.packages('descr')
install.packages('MASS')
install.packages('rgl')
install.packages('car')

# -----------------------------------------------------------------------------
# Carregar e listar os conteúdos dos pacotes
# -----------------------------------------------------------------------------
library(MASS)  # OU
require(MASS)  # Deste modo, todas as funções dos pacotes estão prontas para uso!
library(descr)

library(help = MASS) # Lista todas as bases de dados e funções do pacote

# -----------------------------------------------------------------------------
# Ajuda (socorro)
# ----------------------------------
help(round)
?round 
?length

?'for'
?'[[' # Para indexar!

?'while'
?"for"

apropos('mea')   # Busca todas as funções com estas letras

apropos('^mea')  # Busca todas as funções que COMEÇAM com estas letras

help.search('mea')

help.start()     # ou menu 'Help/Html help

# -----------------------------------------------------------------------------
# Documentação
# ----------------------------------------------------------------------------- 
vignette('tutorial')       # Documentos em pdf (dependente dos pacotes instalados)

vignette('multcomp-examples')#Abre um pdf relacionado ao pacote multcomp.

# -----------------------------------------------------------------------------
# Busca por palavras chave sobre um assunto de interesse
# -----------------------------------------------------------------------------
install.packages('sos')
library(sos)

findFn('Effluent treatment')
findFn('analytical chemistry')
findFn('anthropology')
???'anthropology'

# -----------------------------------------------------------------------------
# Exercícios
# -----------------------------------------------------------------------------
# 1. Instale as bibliotecas fdth e Ryacas. Já é possível utilizar as funções dos pacotes? Explique.
# 2. Quem são os autores e qual é a versão dos pacotes do exercício 1?
# 3. Acesse o manual dos pacotes do exercício 1 e cite pelo menos duas funções que contenha exemplos. Copie e cole os exemplos abaixo e execute-os.
# 4. Peça ajuda a função fdt do pacote fdth e escreva para que serve os argumentos k, start, end e h.
# 5. Acesse a vignette dos pacotes do exercício 1.
# 6. Procure se existe algum pacote na área de tratamento de efluente. Utilize o termo em inglês "Effluent treatment". 




