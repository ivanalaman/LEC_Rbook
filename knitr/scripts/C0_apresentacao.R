# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2015/07/28 - 08:35:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Alguns exemplos dos recursos gr�ficos b�sicos
# -----------------------------------------------------------------------------
demo(graphics)  # Recursos gr�ficos gen�ricos

demo(persp)     # Recursos gr�ficos 3D

demo()          # Lista os demos dos pacotes carregados na sess�o

# Lista os demos de todos os pacotes instalados (carregados ou n�o)
demo(package = .packages(all.available = TRUE))

# -----------------------------------------------------------------------------
# Alguns exemplos dos recursos gr�ficos mais avan�ados
# -----------------------------------------------------------------------------
demo(plotmath)  # Recursos para escrever equa��es,
                # f�rmulas e s�mbolos dentro de gr�ficos

library(plotrix) # Aten��o!!! n�o vem instalado!!!!
demo(plotrix)

library(lattice) # Aten��o!!! n�o vem instalado!!!!
demo(lattice)

# rgl (3d din�mico)
library(rgl)   # Aten��o!!!! n�o vem instalado!!!
demo(abundance) # Recursos gr�ficos 3D din�mico (interagir com o mouse)
demo(bivar)     # Recursos gr�ficos 3D din�mico (interagir com o mouse)

# -----------------------------------------------------------------------------
# Recursos gr�ficos interativos para ensino
# -----------------------------------------------------------------------------
library(rpanel) # Aten��o!!!! n�o vem instalado!!!
demo(rp.gulls)

library(asbio) # Aten��o!!!! n�o vem instalado!!!!
anm.ci.tck()    # Intervalo de confian�a

anm.coin.tck()  # Estabiliza��o da frequ�ncia relativa

library(shiny)
runExample("01_hello")

