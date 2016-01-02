# Apply Demo

student.marks <- matrix(c(70L, 75L, 72L, 80L, 50L,
                          80L, 85L, 60L, 72L, 88L,
                          60L, 70L, 87L, 55L, 90L,
                          85L, 70L, 74L, 86L, 78L), ncol = 5, nrow = 4, byrow = TRUE)

rownames(student.marks) <- c('Jim', 'Bob', 'Poh', 'Roe')
colnames(student.marks) <- c('Phy', 'Chem', 'Math', 'Bio', 'Hist')
student.marks

# One way to sum up the rows
result <- vector('numeric', length = nrow(student.marks))
for (row in 1: nrow(student.marks)){
  sum <- 0;
  for(col in 1: ncol(student.marks)){
    sum <- sum + student.marks[row, col]
  }
  result[row] <- sum
}
result
  
# Easier way to do this

# apply(data, margin, fun, ...)
# data - type of data you are working with
# margin - working with rows, 1, or col, 2, or both 1,2
apply(student.marks, 1, sum)
apply(student.marks, 1, max)

# which.max - which column does the max exist in
apply(student.marks, 1, which.max)
colnames(student.marks)[apply(student.marks, 1, which.max)]

apply(student.marks, 2, mean)
apply(student.marks,2,max)
rownames(student.marks)[apply(student.marks,2,which.max)]
print('before')
student.marks
print('after')
apply(student.marks, 1:2, function(x) x + 2)

