rm(list=ls())

library(lme4)
library(lmerTest)
library(ggplot2)
library(dplyr)



####
#### Read in the dataset
####

options(scipen=999)

data <- read.delim("out_agr_counfounding_pronoun.txt",header=TRUE,sep =",")
summary(data)


####
#### Plot results
####

ggplot(aes(x = VerbCondition, y = Surprisal, fill = FillerCondition), data = data) +
 geom_boxplot() +
 xlab("") + #Verb agreement across four levels of clausal embedding in 'it' clefts") +
 facet_grid(.~EmbeddingLevel) +
 theme_bw(base_size=20) + 
 theme(legend.position = "bottom") +
  ggsave("~/Desktop/bert_clefts_confound.eps",height=8,width=8)

 
# Level1

x <- data[data$EmbeddingLevel == 1,]
y <- x[x$VerbCondition == 'V-pl',]
t.test(y$Surprisal ~ y$FillerCondition)
# sig

y <- x[x$VerbCondition == 'V-sg',]
t.test(y$Surprisal ~ y$FillerCondition)
# sig

# Level2

x <- data[data$EmbeddingLevel == 2,]
y <- x[x$VerbCondition == 'V-pl',]
t.test(y$Surprisal ~ y$FillerCondition)
# sig

y <- x[x$VerbCondition == 'V-sg',]
t.test(y$Surprisal ~ y$FillerCondition)
# sig

# Level3

x <- data[data$EmbeddingLevel == 3,]
y <- x[x$VerbCondition == 'V-pl',]
t.test(y$Surprisal ~ y$FillerCondition)
# sig

y <- x[x$VerbCondition == 'V-sg',]
t.test(y$Surprisal ~ y$FillerCondition)
# sig

# Level4

x <- data[data$EmbeddingLevel == 4,]
y <- x[x$VerbCondition == 'V-pl',]
t.test(y$Surprisal ~ y$FillerCondition)
#  sig

y <- x[x$VerbCondition == 'V-sg',]
t.test(y$Surprisal ~ y$FillerCondition)
#  sig


