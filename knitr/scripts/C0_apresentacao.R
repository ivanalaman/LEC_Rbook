# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 08:35:00
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Alguns exemplos dos recursos gráficos básicos
# -----------------------------------------------------------------------------
demo(graphics)  # Recursos gráficos genéricos

demo(persp)     # Recursos gráficos 3D

demo()          # Lista os demos dos pacotes carregados na sessão

# Lista os demos de todos os pacotes instalados (carregados ou não)
demo(package = .packages(all.available = TRUE))

# -----------------------------------------------------------------------------
# Alguns exemplos dos recursos gráficos mais avançados
# -----------------------------------------------------------------------------
demo(plotmath)  # Recursos para escrever equações,
                # fórmulas e símbolos dentro de gráficos

library(plotrix) # Atenção!!! não vem instalado!!!!
demo(plotrix)

library(lattice) # Atenção!!! não vem instalado!!!!
demo(lattice)

# rgl (3d dinâmico)
library(rgl)   # Atenção!!!! não vem instalado!!!
demo(abundance) # Recursos gráficos 3D dinâmico (interagir com o mouse)
demo(bivar)     # Recursos gráficos 3D dinâmico (interagir com o mouse)

# -----------------------------------------------------------------------------
# Recursos gráficos interativos para ensino
# -----------------------------------------------------------------------------
library(rpanel) # Atenção!!!! não vem instalado!!!
demo(rp.gulls)

library(asbio) # Atenção!!!! não vem instalado!!!!
anm.ci.tck()    # Intervalo de confiança

anm.coin.tck()  # Estabilização da frequência relativa

library(shiny)
runExample("01_hello")

