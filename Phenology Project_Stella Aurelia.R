#install & load packages
install.packages("tidyverse")
library(tidyverse)

#create a dataset
Phenology <- Phenology_2022

#view the dataset
str(Phenology)
summary(Phenology)

#create visualizations
ggplot(data = Phenology) + 
  geom_boxplot(mapping = aes(x = Trt, y = WkHt6, fill = Trt)) +
  ggtitle("Boxplot of Treatments vs Week 6 Height") +
  xlab("Plant Treatments") +
  ylab("Week 6 Heights (cm)")


Phenology$Month  = factor(Phenology$Month, levels=c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"))
ggplot(data = Phenology) + 
  geom_boxplot(mapping = aes(x = Month, y = WkHt6, fill = Month)) +
  ggtitle("Boxplot of Months vs Week 6 Height") +
  xlab("Months") +
  ylab("Week 6 Heights (cm)") + 
  coord_flip()

interaction.plot(Phenology$Trt, Phenology$Month, Phenology$WkHt6) 

#fit 2-way anova model
Phenology_Results <- aov(WkHt6 ~ as.factor(Trt) + as.factor(Month) + as.factor(Trt) * as.factor(Month), data = Phenology)
summary(Phenology_Results)

#check assumptions
res <- Phenology_Results$residuals
hist(res)
plot(Phenology_Results)
anova(Phenology_Results)

#Tukey post hoc test
TukeyHSD(Phenology_Results)

#interactions are significant
library(emmeans)

# compare the effect of Trt at each Month (February-November = Significant, January & December Insignificant)
emmeans(Phenology_Results, list(pairwise ~ Trt|Month)) 

# compare the effect of Month  being told at each Trt
emmeans(Phenology_Results, list(pairwise ~ Month|Trt))

#  both outcome and self-esteem are not significant if we compare the main effect
emmeans(Phenology_Results, list(pairwise ~ Trt))
emmeans(Phenology_Results, list(pairwise ~ Month))


