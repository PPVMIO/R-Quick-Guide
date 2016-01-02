student.physics.scores <- c(70L, 75L, 80L, 85L)
student.chemistry.scores <- c(60L, 70L, 85L, 70L)
student.marks <- rbind(student.physics.scores, student.chemistry.scores)
student.marks
student.marks <- cbind(student.physics.scores, student.chemistry.scores)
student.marks
rownames(student.marks) <- c("Raj", "Poon", "Ric", "Mort");
student.marks
str(student.marks)

#this is another way to construct a matrix

#col4 row2
student.marks <- matrix(c(70L, 75L, 80L, 85L, 60L, 70L, 85L, 70L), ncol=4, nrow = 2, byrow=TRUE)
student.marks

#col2 row4
student.marks <- matrix(c(70L, 75L, 80L, 85L, 60L, 70L, 85L, 70L), ncol = 2, nrow = 4)
student.marks

student.marks[1:2,]
student.marks[c(1,2),]
student.marks[c(T,F,F,T),]

rowSums(student.marks)
colMeans(student.marks)
