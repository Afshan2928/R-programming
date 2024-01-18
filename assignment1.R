#Vector Creation:
#1)Create a numeric vector named grades containing the values 85, 90, 78, 92,
#and 88.
grades<-c(85,90,78,92,88)
grades

#2)Vector Operations:
#Create two vectors, vector1 with values 1, 2, 3 and vector2 with values 4, 5,6
#Perform element-wise addition and subtraction.
vector1<-c(1,2,3)
vector2<-c(4,5,6)
add_result<-vector1+vector2
add_result
sub_result<-vector1-vector2
sub_result

#3)vector_cities
vector_cities<-c("New York","London","Tokyo","Paris","Sydney")
vector_cities[2]
vector_cities[4]

#4)Using the mean() function, find the average of a numeric vector named data.
data<-c(2,4,5,6,7,8)
mean(data)


#5)Given the vector ages &lt;- c(25, 30, 22, 40, 18, 35), create a new vector
#containing only those values greater than 25.
vector_ages<-c(25, 30, 22, 40, 18, 35)
new_vector<-vector_ages[vector_ages>25]
new_vector

#6)Sort the vector numbers &lt;- c(15, 8, 22, 12, 17) in ascending order.
vect_num<-c(15,8,22,12,17)
sort(vect_num)

#7)length functrion
colors<-c("red","blue","green","yellow")
length(colors)

#8)Vector Concatenation:
vec1<-c(1,2,3)
vec2<-c(4,5,6)
combined_vec<-c(vec1,vec2)
combined_vec

#9)Replicate the vector sequence &lt;- c(1, 2, 3) three times.
seq<-c(1,2,3)
replicated_seq<-rep(seq,times=3)
replicated_seq

#10)Create a named vector population with city names as names and
#corresponding population values.
population <- c(NewYork = 8537673, LosAngeles = 3980408, Chicago = 2716000, Houston = 2328046, Phoenix = 1680992)
population

#Type Conversion:
#1)Create a numeric vector numeric_vector and convert it to a character vector named
#char_vector. Display both vectors.
num_vector<-c(10,20,30,40,50)
char_vector<-as.character((num_vector))
char_vector

#2)Create a logical vector logical_vector with values TRUE, FALSE, TRUE. Convert it
#to a numeric vector and display the result.
logical_vector<-c(TRUE,FALSE,TRUE)
numeric_vector<-as.numeric((logical_vector))
numeric_vector

#3)Create a factor variable factor_variable with levels &quot;Low,&quot; &quot;Medium,&quot; &quot;High.&quot; Convert
#it to a character vector and display the result.
fac_variable<-factor(c("Low","Medium","High"))
char_variable<-as.character(fac_variable)
char_variable


#4)Create a character vector date_strings with date values in the format &quot;YYYY-MM-
#DD.&quot; Convert it to a Date object and display the result.
date_strings<-c("2022-01-15","2022-02-28","2022-03-10")
date_objects<-as.Date(date_strings)
date_objects

#5)Create a numeric variable named temperature with the value 28.3.
temperature<-28.3
temperature

#6)Assign the value &quot;John&quot; to a character variable named name.
name<-"John"
name

#7)Provide three rules for naming variables in R, and give an example of an invalid
#variable name.
#1
# Valid variable names
validVar1 <- 10
valid.var2 <- 20
#2
# Valid variable name
validVar3 <- 30

# Invalid variable name (contains a special character)
invalidVar@ <- 40

# Valid variable name
my_if_variable <- 50

# Invalid variable name (using a reserved word)
if <- 60

# Invalid variable name (starts with a number)
2invalidVar <- 70

#8)Explain the difference between a vector and a data frame in R. Provide an example
#of each.
#In R, both vectors and data frames are fundamental data structures, but they differ in terms of complexity, dimensionality, and the types of data they can hold.

#Vector:
 # A vector is a one-dimensional array that can store elements of the same data type.
#Vectors can be of different types, such as numeric, character, logical, etc.
#All elements of a vector must be of the same type.
#Vectors are created using the c() function.
# Numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Character vector
char_vector <- c("apple", "orange", "banana")

#Data Frame:
  
  #A data frame is a two-dimensional table-like structure, similar to a spreadsheet or a database table.
#It can store different types of data in different columns.
#Each column in a data frame can be considered as a vector, and these vectors can have different data types.
#Data frames are created using the data.frame() function.
# Creating a data frame
student_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 22, 24),
  Grade = c("A", "B", "A-")
)
#In this example, student_data is a data frame with three columns: Name, Age, and Grade. Each column is a vector, and they can have different data types.

#In summary, a vector is a one-dimensional structure that can store elements of the same data type, while a data frame is a two-dimensional structure that can store different types of data in different columns. Vectors are the building blocks of data frames, and data frames provide a convenient way to work with tabular data in R.

#9)Given a numeric variable count with the value 15, increment its value by 5.
a<-15
a<-a+5
a

#10)Using a built-in function, check the data type of a variable named data_set.
data<-c(10,4,5)
data_type<-class(data)
data_type

#11)Delete a variable named unused_variable from the workspace.

#12)Create three variables a, b, and c with values 10, 15, and 20, respectively, in a
#single line.
# Creating variables a, b, and c with values 10, 15, and 20
a <- 10; b <- 15; c <- 20
