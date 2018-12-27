 library(readxl)
 CDAT2 <- read_excel("~/CDAT2.xlsx")
 View(CDAT2)
plot(ENJG~IPC1k,data=CDAT2)
summary(CDAT2)
mean.CDAT2= mean(CDAT2$ENJG)
abline(h=mean.CDAT2)
model1=lm(ENJG~IPC1k,data=CDAT2)
model2=lm(ENJG~IPC1k+LBRFC1+HC1+EDU,data=CDAT2)
model3=lm(ENJG~LBRFC1+HC1+EDU+State_WASH1+State_NY1+State_FL1,data=CDAT2) 

plot(model1)
plot(model2)
plot(model3)


summary(model1)
summary(model2)
summary(model3)
