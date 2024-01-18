#numeric
x<-8.9
class(x)

var1<-23.5L
class(var1)

var2<-1000L
class(var2)

strg1<-"my name is"
class(strg1)

comp1<-8+9i
class(comp1)

#type conversion

x<-"10.7"
integer_x<-as.integer(x)
integer_x

y<-89
character_x<-as.character(y)
character_x

z=1
logic_z<-as.logical(z)
logic_z

strg2<-"123"
numeric_strg2<-as.numeric(strg2)
numeric_strg2

strg3<-"hello"
numeric_strg3<-as.numeric(strg3)
numeric_strg3

date<-"2024-01-17"
date_obj<-as.Date(date)
date_obj
