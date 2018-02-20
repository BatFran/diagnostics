library(ggfortify)
library(tidyverse)

mod1 <- lm(mpg ~ wt, data = mtcars)
summary(mod1)

#1. The regression model is linear in parameters.
#Eyeball it.

mtcars %>%
  ggplot(., aes(x = wt, y = mpg)) + 
  geom_point() + 
  geom_smooth()

#2. The mean of te residuals is zero
# Check model summary and test manually
# mean(mod1$residuals)
mean(mod1$residuals)
summary(mod1)

#3. Homoskedasticity of residuals or equal variance
#Left side plots
autoplot(mod1, which = c(1, 3))

#4. No autocorrelation of residuals or equal variance
# Left side plots
autoplot(mod1, which = )