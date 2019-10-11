# =============================================================================
# Título : Introdução ao ambiente computacional estatístico R
# Autor  : Laboratório de Estatística Computacional - LEC
# Data   : 2015/07/28 - 16:00:46
# Tutores: José Cláudio Faria
#          Ivan Bezerra Allaman
# =============================================================================

# =============================================================================
# ENVIE AS INTRUÇÕES ABAIXO PARA O INTERPRETADOR R
# (INICIALMENTE LINHA POR LINHA OU PEQUENAS SELEÇÕES)
# PARA SE FAMILIARIZAR COM OS PRINCIPAIS RECURSOS
# =============================================================================

# -----------------------------------------------------------------------------
# Cálculo
# -----------------------------------------------------------------------------

# Derivada
f = expression(2 * x + 3)
f

D(f, 'x')  # ou

D(expression(2 * x + 3),
  'x')

deriv(f,
      'x')

deriv(expression(2 * x^2 + x + 4),
      'x')
 

# Integral
f1 = function(x){
 x/2 * (0 < x & x <= 5)
}

integrate(f1,
          1,
          3)

# Ver library(Ryacas) e library(mosaic)
#install.packages('Ryacas')
library(Ryacas)# Precisa instalar antes!!!
yacasInstall() # Precisa rodar esta função antes para instalar algumas dependências para o pacote funcionar (Somente no windows)!
x <- Sym("x")
Integrate(x^2, x)

y <- Exprq(x)
y*y
deriv(y*y, y)

yacas("Solve(x^2+x == 0, x)")

yacas("Solve(x^3 - 3*x + 1 == 0,x)") 

yacas("Limit(x,4)(x^2+2*x)")

yacas("Integrate(y,0,y)2*Exp(-2*y)")

vignette("Ryacas")

yacas("Solve(6 * Ln(6 * t^3 + 108 * t^2 + 1296 * t + 7776) - 53.72271 - t == 0,t)")

ve <- NULL
for(i in 1:100) 
{
  ve[i] <- (-6 * i^3 - 108 * i^2 - 1296 * i - 7776)*exp(-i/6) + 7776 - 6^5*.995
}

ve


