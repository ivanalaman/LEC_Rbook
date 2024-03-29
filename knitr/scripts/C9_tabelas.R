# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2015/07/28 - 13:20:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Tabelas
# -----------------------------------------------------------------------------
# tabelas simples

tabsimp = rep(c('Mulheres',
                 'Homens'),
               c(20, 12))
tabsimp

table(tabsimp)      # fun��o para fazer a tabela dos dados
prop.table(table(tabsimp)) # fun��o para calcular a propor��o dos objetos de uma tabela.

ptabsimp = table(tabsimp)

ptabsimp

prop.table(ptabsimp)

sum(prop.table(ptabsimp))

addmargins(table(tabsimp))

# tabelas cruzadas

sexo = rep(c('Mulh', 'Hom'),
           c(23, 45))
fumante = c(rep(c('s',
                  'n'),
                c(10, 13)),
            rep(c('s', 'n'),
                c(23, 22)))

tabcr = data.frame(sexo,
                    fumante)
tabcr
table(tabcr)

prop.table(table(tabcr))  # E se eu quiser a linha como refer�ncia para as propor��es??

prop.table(table(tabcr),
           margin = 1)

prop.table(table(tabcr),
           margin = 2)

addmargins(table(tabcr))

addmargins(table(tabcr),
           FUN = mean)

# tabelas multidimensionais
estadocivil = c(rep(c('solteiro',
                      'casado'),
                    c(17, 6)),
                rep(c('solteiro',
                      'casado'),
                    c(20, 25)))
tabmul = data.frame(estadocivil,
                     sexo,
                     fumante)
tabmul

with(tabmul,
     table(sexo,
           fumante,
           estadocivil))

tabm = with(tabmul,
     table(sexo,
           fumante,
           estadocivil))

prop.table(tabm,
           margin=1)

prop.table(tabm,
           margin=2)



# Ou tamb�m utilizando a fun��o ftable
with(tabmul,
     ftable(sexo,
            fumante,
            estadocivil))

tabf = with(tabmul,
             ftable(sexo,
                    fumante,
                    estadocivil))

prop.table(tabf,
           margin=1)
prop.table(tabf,
           margin=2) 

