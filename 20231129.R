numbers <- c(12, 20, 37, 43, 51)

print(numbers[[1]])
print(numbers[[2]])
print(numbers[[3]])
print(numbers[[4]])
print(numbers[[5]])

for(.x in 1:howManyTimes)

  dataSet <- list(
    list(
      gender="male", height=178, age=32,
      children=list(
        list(gender="male", age=5),
        list(gender="male", age=0))
    ),
    list(
      gender="female", height=166, age=30,
      children=list(
        list(gender="female", age=3))
    ),
    list(
      gender="male", height=170, age=42,
      children=list(
        list(gender="male", age=10),
        list(gender="female", age=8))
    ),
    list(
      gender="male", height=188, age=22,
      children=list()
    ),  
    list(
      gender="male", height=172, age=52,
      children=list(
        list(gender="female", age=25),
        list(gender="female", age=23))
    ),
    list(
      gender="female", height=160, age=42,
      children=list(
        list(gender="female", age=11))
    )
  )
howManyTimes=6
for(.x in 1:howManyTimes)
{
  print(length(dataSet[[.x]]$children))
}

