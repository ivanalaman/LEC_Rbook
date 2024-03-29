# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2017/04/22 - 09:27:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
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
# Carregar e listar os conte�dos dos pacotes
# -----------------------------------------------------------------------------
library(MASS)  # OU
require(MASS)  # Deste modo, todas as fun��es dos pacotes est�o prontas para uso!
library(descr)

library(help = MASS) # Lista todas as bases de dados e fun��es do pacote

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

apropos('mea')   # Busca todas as fun��es com estas letras

apropos('^mea')  # Busca todas as fun��es que COME�AM com estas letras

help.search('mea')

help.start()     # ou menu 'Help/Html help

# -----------------------------------------------------------------------------
# Documenta��o
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
# Exerc�cios
# -----------------------------------------------------------------------------
# 1. Instale as bibliotecas fdth e Ryacas. J� � poss�vel utilizar as fun��es dos pacotes? Explique.
# 2. Quem s�o os autores e qual � a vers�o dos pacotes do exerc�cio 1?
# 3. Acesse o manual dos pacotes do exerc�cio 1 e cite pelo menos duas fun��es que contenha exemplos. Copie e cole os exemplos abaixo e execute-os.
# 4. Pe�a ajuda a fun��o fdt do pacote fdth e escreva para que serve os argumentos k, start, end e h.
# 5. Acesse a vignette dos pacotes do exerc�cio 1.
# 6. Procure se existe algum pacote na �rea de tratamento de efluente. Utilize o termo em ingl�s "Effluent treatment". 




