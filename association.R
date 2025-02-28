options(digits = 2)
set.seed(1234)
library("arulesViz")
data("Groceries")
summary(Groceries)
rules <- apriori(Groceries, parameter=list(support=0.002, confidence=0.5))
rules
inspect(head(rules, n = 3, by ="lift"))
args(getS3method("plot", "rules"))
plot(rules)
head(quality(rules))
plot(rules, measure = c("support", "lift"), shading = "confidence")
plot(rules, method = "two-key plot")
sel <- plot(rules, measure=c("support", "lift"), shading = "confidence", engine = 'interactive', method = "two-key plot")
