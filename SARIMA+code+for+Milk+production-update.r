
milk<-read.csv('monthly-milk-production-pounds-p.csv')
Milk<-milk$Pounds

library(astsa)
sarima(Milk, 0,1,0,0,1,1,12)

library(astsa)
library(forecast)

d=NULL
DD=NULL
d=1
DD=1

per=12
for(p in 1:1){
  for(q in 1:1){
    for(i in 1:3){
      for(j in 1:4){
        if(p+d+q+i+DD+j<=10){
          model<-arima(x=Milk, order = c((p-1),d,(q-1)), seasonal = list(order=c((i-1),DD,(j-1)), period=per))
          pval<-Box.test(model$residuals, lag=log(length(model$residuals)))
          sse<-sum(model$residuals^2)
          cat(p-1,d,q-1,i-1,DD,j-1,per, 'AIC=', model$aic, ' SSE=',sse,' p-VALUE=', pval$p.value,'\n')
        }
      }
    }
  }
}

model<- arima(x=Milk, order = c(0,1,0), seasonal = list(order=c(0,1,1), period=12))

plot(forecast(model))

forecast(model)


