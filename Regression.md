Regression Model - Predict mpg in mtcars dataset
========================================================
author: Elankumaran
date: 19-Nov-2015


How it works?
========================================================
- User selects the value for cyclinder (4,6 or 8) 
- User selects the qsec value from the slider 
- User selects the wt value from the slider
- Predicted mpg value changes as the user inpur changes reactively
- User selected values are also displayed on the main panel
- Mpg predicted based on the regression model built with the wt,qsec,cyl as predictors
- Model co-efficients and Model summary are shown on separate tabs

Application Screenshot
========================================================

Link: http://elankumaran.shinyapps.io/regression


Screenshot

![Screenshot](RegressionShiny1.jpg)

Regression Model
========================================================

```r
model<-lm(mpg~cyl+wt+qsec,data=mtcars)
summary(model)
```

```

Call:
lm(formula = mpg ~ cyl + wt + qsec, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.5937 -1.5621 -0.3595  1.2097  5.5500 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  29.4291     8.1912   3.593 0.001238 ** 
cyl          -0.9277     0.6113  -1.518 0.140280    
wt           -3.8616     0.9138  -4.226 0.000229 ***
qsec          0.4945     0.3863   1.280 0.211061    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.54 on 28 degrees of freedom
Multiple R-squared:  0.8396,	Adjusted R-squared:  0.8224 
F-statistic: 48.86 on 3 and 28 DF,  p-value: 2.979e-11
```

Notes
========================================================
- This regression model fit using wt,cyl,qsec is just for demonstration purposes and doesnt mean this is the best fit.
- The code for this shiny application is available at https://github.com/elan-kumaran/DevelopingDataProducts

