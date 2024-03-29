# =============================================================================
# T�tulo : Introdu��o ao ambiente computacional estat�stico R
# Autor  : Laborat�rio de Estat�stica Computacional - LEC
# Data   : 2015/07/28 - 22:09:00
# Tutores: Jos� Cl�udio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRU��ES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELE��ES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Algumas aplica��es b�sicas
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Teste de independ�ncia para tabelas de conting�ncia
# -----------------------------------------------------------------------------

sexo = rep(c('Mulh', 'Hom'),
           c(23, 45))
fumante = c(rep(c('s',
                  'n'),
                c(10, 13)),
            rep(c('s', 'n'),
                c(23, 22)))

tabcr = data.frame(sexo,
                    fumante) 
tab1 = table(tabcr)
tab1

ptab1 = prop.table(tab1,
                    mar = 1)
ptab1

install.packages('descr')
library(descr) 
?CrossTable

resutab = CrossTable(tab1,
                      chisq=T)
plot(resutab)

# -----------------------------------------------------------------------------
# Intervalo de confian�a para uma m�dia - sigma desconhecido � claro!
# -----------------------------------------------------------------------------
# Utilizando as vari�veis da base dad1
with(iris,
     t.test(Sepal.Width)) # E manualmente, como seria???

with(iris,
     t.test(Sepal.Width,
            conf.level = 0.99)) 

with(iris,
     t.test(Sepal.Width,
            mu = 4))

# -----------------------------------------------------------------------------
# Intervalo de confian�a para um propor��o
# -----------------------------------------------------------------------------
library(MASS)
Aids2

tabbol = with(Aids2,
               table(T.categ))

prop.table(tabbol)

blood = subset(Aids2,
                T.categ == 'blood')

sucesso = length(blood$T.categ)
total = dim(Aids2)[1]

with(Aids2,
     prop.test(sucesso,
               total, correct = FALSE))

with(Aids2,
     binom.test(sucesso,
                total,
                p = 0.5 ))

# -----------------------------------------------------------------------------
# Teste de hip�tese para a diferen�a entre duas m�dias - amostras independentes
# -----------------------------------------------------------------------------
homens = subset(Aids2, sex == 'M')
homens

mulheres = subset(Aids2, sex == 'F')
mulheres

t.test(homens$age,
       mulheres$age)

hist(homens$age)
hist(mulheres$age)

# -----------------------------------------------------------------------------
# An�lise de correla��o (Pearson)
# e regress�o linear simples para dados n�o estruturados!
# -----------------------------------------------------------------------------
plot(iris[,1:4])

with(iris,
     cor(Sepal.Length,
         Sepal.Width))

cor(iris[,1:4])


with(iris,
     cor.test(Sepal.Length,
              Sepal.Width)) # Caso queira testar se o coeficiente � igual a zero

# -----------------------------------------------------------------------------
# An�lise de regress�o
# -----------------------------------------------------------------------------
mod = lm(Sepal.Length ~ Petal.Length,
          iris)

summary(mod) # Compreendendo o output!!

fitted(mod)  # Valores estimados

confint(mod) # Intervalo de confian�a para os par�metros beta0 e beta1

with(iris,
     plot(Petal.Length,
          Sepal.Length)) # Gr�fico com a reta ajustada

abline(mod,
       col = 'red')

plot.ic.lm = function(model,sig.level=0.95){
  vari<- attr(model$coefficients,'names')[2]
  xm  <- mean(model[[12]][2][[vari]])
  n   <- length(model[[12]][[2]])
  ssx <- sum(model[[12]][2]^2) - sum(model[[12]][2])^2/n
  siglev <- sig.level
  alpha <- (1-siglev)/2
  st  <- abs(qt(alpha,
            (n - 2)))
  xv  <- seq(min(model[[12]][2]),
             max(model[[12]][2]),
             (max(model[[12]][2]) - min(model[[12]][2]))/100)
  yv  <- coef(model)[1] + coef(model)[2] * xv
  se  <- sqrt(summary(model)[[6]]^2 * (1/n + (xv - xm)^2/ssx))
  ci  <- st * se
  uyv <- yv + ci
  lyv <- yv - ci
  lines(xv,
        uyv,
        lty=1,
        col='gray')
  lines(xv,
        lyv,
        lty=1,
        col='gray')
}

plot.ic.lm(mod)

# -----------------------------------------------------------------------------
# An�lise de vari�ncia one-way!
# -----------------------------------------------------------------------------
library(car)
data(Moore)

anovaa <- aov(conformity ~ fcategory,
              Moore)
summary(anovaa)

library(TukeyC)
tk = TukeyC(anovaa,
            which='fcategory')
summary(tk)

library(ScottKnott)
sk = SK(anovaa,
            which='fcategory')
summary(sk)



