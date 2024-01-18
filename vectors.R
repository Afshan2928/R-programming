chocolates<-c("kitkat","dairymilk","milkybar")
chocolates
numbers<-c(1,4,5)
numbers


numbers1<-1:10
numbers1

numbers2<-1.5:6.5
numbers2

log_values<-c(TRUE,FALSE,TRUE,FALSE)
log_values

log_values1<-c(NULL)
log_values1

log_values3<-c(1,0,1,0)
log_values3


chocolates<-c("kitkat","dairymilk","milkybar")
length(chocolates)

num<-c(9,6,8,4,5)
sort(num)

fruits<-c("apple","kiwi","orange")
sort(fruits)
fruits[3]
fruits[c(2,3)]
fruits[-3]
fruits[-2]
fruits[-1]

colors<-c("pink","blue","green","black","brown","red")
length(colors)
colors[-1]
colors[-3]
colors[-5]
colors[-6]
sort(colors)

numb<-c(9,8,1,5,4,3,7)
length(numb)
numb[-1]
numb[-6]
numb[-5]
sort(numb)

flowers<-c("rose","lily","sunflower","jasmine")
flowers[1]<-"marigold"
flowers

flowers[-2]<-"lotus"
flowers

flowers[3]<-"redrose"
flowers

#repetative
repeat_times<-rep(c(1,2,3),each=3)
repeat_times

repeat_times<-rep(c(1,2,3),times=3)
repeat_times

repeat_independent<-rep(c(1,2,3),times=c(4,5,3))
repeat_independent

numbers<-seq(from=0,to=100,by=20)
numbers

var1<-c("rose",1,"gold",34,"silver",87)
var1
var2<-c(1,"red",4,5,6,7,"blue",4,8,"black","pink",9,10)
var2
repeated_times<-rep(c(1,"red",4,5,6,7,"blue",4,8,"black","pink",9,10),times=7)
repeated_times

repeated_times<-rep(c(var2),times=7)
repeated_times

repeated_independent<-rep(c(var2),each=c(1,2,3,4,5,6,7,8))
repeated_independent

sort(repeated_independent)

var2<-c(1,"red",4,5,6,7,"blue",4,8,"black","pink",9,10)
var2[1]<-"gold"
var2