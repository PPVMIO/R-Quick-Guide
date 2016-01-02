#DATA FRAMES EXAMPLE
student.names <- c("Paul", "Cal", "Greg")
student.weights <- (120, 145, 200)
student.genders <- c("M", "F", "M")
student.physics.scores <- c(70L, 75L, 80L)
student.chemistry.scores <- c(60L, 70L, 85L)
students <- data.frame(student.names, student.weights, student.genders, student.physics.scores,
                       student.chemistry.scores)
students
typeof(students)
str(students)
students[1]
typeof(students[1])
students[[1]]
typeof(students[[1]])
