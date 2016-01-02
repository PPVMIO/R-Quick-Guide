# Function Tutorial

# declarations
student.physics.quiz.marks <- c(70L, 75L, 80L, 85L)
student.physics.viva.marks <- c(7L, 5L, 8L, 6L)

# function names should have initial capital letters, should not use punctuation or lower initial letters
GetTotalMarks <- function(quiz.marks, viva.marks){
  total.marks <- quiz.marks + viva.marks
  total.marks # return value (does not need return keyword)
} 
student.physics.total.marks <- GetTotalMarks(student.physics.quiz.marks, student.physics.viva.marks)
student.physics.total.marks



# function with default argument
GetTotalMarks2 <- function(quiz.marks, viva.marks, assignment.marks = 5L){
  total.marks <- quiz.marks + viva.marks + assignment.marks
  total.marks
} 
student.physics.total.marks <- GetTotalMarks2(student.physics.quiz.marks, student.physics.viva.marks)
student.physics.total.marks

# function with ellipses 
GetTotalMarks3 <- function(quiz.marks, viva.marks, assignment.marks = 5L, ...){
  total.marks <- quiz.marks + viva.marks + assignment.marks + sum(...)
  total.marks 
} 
student.physics.total.marks <- GetTotalMarks3(student.physics.quiz.marks, assignment.marks = c(2L, 1L, 3L, 4L), student.physics.viva.marks, creativity.marks =2, attendence.marks =3)
student.physics.total.marks

# functions lazy evaluations
GetTotalMarks4 <- function(quiz.marks, viva.marks, extra.marks = average.viva.marks){
  #average is then set here
  average.viva.marks <- mean(viva.marks)
  #extra.marks will be average.viva.marks
  total.marks <- quiz.marks + viva.marks + extra.marks
  total.marks
}
GetTotalMarks4(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L, 6L))

# functions with multiple return statements
GetMarksSummary <- function(quiz.marks, viva.marks){
  total.marks <- quiz.marks + viva.marks
  avg.marks <- mean(total.marks)
  return(list (total = total.marks, average = avg.marks))
}
GetMarksSummary(quiz.marks = c(70L, 75L, 80L, 85L), viva.marks = c(7L, 5L, 8L,6L))

# functions as objects