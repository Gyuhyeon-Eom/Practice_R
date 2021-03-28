library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

mpg$total <- (mpg$cty + mpg$hwy)/2

#summary(mpg$total)
#hist(mpg$total)

mpg$test <- ifelse(mpg$total>=20, "pass", "fail")
#head(mpg, 20)
#table(mpg$test)
#qplot(mpg$test)

mpg$test2 <- ifelse(mpg$total >= 30 , "A",
                    ifelse(mpg$total >= 20, "B", "C"))

head(mpg, 20)
table(mpg$test2)
qplot(mpg$test2)
