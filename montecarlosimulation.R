num_darts=10000
num_darts_in_circle=0



x=runif(n=num_darts,min=-1,max=1)
y=runif(n=num_darts,min=-1,max=1 )
sum_sq=x^2+y^2
indexes_darts_in_circle=which(sum_sq<=1)
num_darts_in_circle=length(indexes_darts_in_circle)
print(4*num_darts_in_circle/num_darts)

plot(x,y)

for(i in 1:10000){
  plot(x[1:i],y[1:i],xlim=c(-1,1),ylim=c(-1,1))
  points(x[i],y[i],col="red")
  Sys.sleep(0.4)
}
}
