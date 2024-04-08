## Variance of rt calculation ##

library(tidyverse)

lambda <- 0.20

t <- seq(26)

qt <- read.table('clipboard') #### remember to has the value columns copied without pasting and run this line

names(qt) <- "Qt"

rt <- vector('double',length=nrow(qt))

for(i in 1:nrow(qt)){
  
  
  if(i == 1){
    
    
    rt[i] <- qt$Qt[i]*lambda
    
  } else {
    
    
    rt[i] <- qt$Qt[i]*lambda + (1-lambda)*rt[i-1]
    
  }
  
}

mt <- vector('double',length=nrow(qt))

for(i in 1:nrow(qt)){
  
  mt[i] <- (1-lambda)^(2*i-2)*i
  
}

mt1 <- cumsum(mt)

ht <- vector('double',length=nrow(qt))

ht[1] <- 0

for(i in 2:nrow(qt)){
  
  ht[i] <- ((1-(1-lambda)^t[i-1])/lambda)
  
}

ht1 <- 2*mt*ht

ht2 <- cumsum(ht1)

var_rt <- lambda^2*(mt1 + ht2)

var_rt

qt <- qt |>
  mutate(Variance = var_rt)

writexl::write_xlsx(qt,"Qt and Rt Calculations.xlsx")

qt <- qt |>
  mutate(L = 3,
         UCL = L*sqrt(Variance),
         LCL = -L*sqrt(Variance),
         t = seq(26),
         rt = rt)

qt |>
  ggplot(aes(x=t,y=rt)) +
  geom_point() +
  geom_line() +
  geom_line(aes(y=UCL),color='red') +
  geom_line(aes(y=LCL),color='red') +
  theme_bw() +
  labs(title = 'Time Series Plot of Smoothed Data (Rt) with Control Limits',
       subtitle = expression(lambda == 0.20))
