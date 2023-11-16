https://rcompanion.org/handbook/G_10.html
install.package(rcompanion)
library(rcompanion)
Fit2 <- glm(as.factor(CT1_ASTH) ~ scale(PRS),data=AST_PT,family=binomial)
nagelkerke(Fit2)
$Models
                                                                
Model: "glm, as.factor(CT1_ASTH) ~ scale(PRS), binomial, AST_PT"
Null:  "glm, as.factor(CT1_ASTH) ~ 1, binomial, AST_PT"         

$Pseudo.R.squared.for.model.vs.null
                             Pseudo.R.squared
McFadden                           0.00659155
Cox and Snell (ML)                 0.00111684
Nagelkerke (Cragg and Uhler)       0.00716206

$Likelihood.ratio.test
 Df.diff LogLik.diff  Chisq    p.value
      -1     -32.753 65.507 5.7912e-16

$Number.of.observations
            
Model: 58621
Null:  58621

$Messages
[1] "Note: For models fit with REML, these statistics are based on refitting with ML"

$Warnings
[1] "None"
