rm(list=ls())

library(lme4)
library(lmerTest)
library(ggplot2)


####
#### Read in the dataset
####

options(scipen=999)

data <- read.delim("out_fg_emb_gpt2_nsai.txt",header=TRUE,sep =",")
summary(data)


####
#### Plot results
####

ggplot(aes(x = Condition, y = Surprisal, fill = Condition), data = data) +
 geom_boxplot() +
 xlab("Conditions across four levels of clausal embedding") +
 facet_grid(.~EmbeddingLevel) +
    theme_bw(base_size=18)  +
 theme(legend.position = "none") + 
  ggsave("~/Desktop/gpt2_nsai.eps",height=6,width=16)


# Level1

x <- data[data$EmbeddingLevel == 1,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'nwh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# sig

x <- data[data$EmbeddingLevel == 2,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'nwh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# sig

x <- data[data$EmbeddingLevel == 3,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'nwh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# sig

x <- data[data$EmbeddingLevel == 4,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'nwh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# sig

# -----------------------------

x <- data[data$EmbeddingLevel == 1,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'wh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# nosig

x <- data[data$EmbeddingLevel == 2,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'wh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# nosig

x <- data[data$EmbeddingLevel == 3,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'wh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# nosig

x <- data[data$EmbeddingLevel == 4,]
y <- x[x$Condition == 'wh-gap' | x$Condition == 'wh-ngap',]
y$Condition <- factor(y$Condition)
t.test(y$Surprisal ~ y$Condition)
# nearsig



