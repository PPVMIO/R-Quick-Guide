# MoreFlowControl

# Vectorized If
test.marks <- c(70L, 75L, 80L, NA)
test.marks >= 75
ifelse(test.marks >= 75, c("Great", "Nice", "Well Done", "Sweet"),
       c("Meh", "Okay", "alright", "not horrible"))

ifelse(test.marks >= 75, "AWESOME BRO", "SUCKY BRO")

# Repeat Statement
WriteOnNotebook <- function(){
  count <- 0
  repeat{
    count <- count + 1
    if(count > 10){
      print('done')
      break
    }
    
    if(count %% 2 == 0){
      print(paste('skpping ~', count))
      next
    }
    print(paste('curr num: ', count))
  }
}
WriteOnNotebook()

# While Statement
WriteOnNotebook1 <- function(total.page.count){
  count1 <- 0
  while(count1 < total.page.count){
    count1 <- count1 + 1
    print(paste('curr num: ', count1))
  }
  print('done')
}
WriteOnNotebook1(10)

# For Loop
WriteOnNotebook2 <- function(total.page.count){
  for(count2 in 1: total.page.count){
    print(paste('curr num: ', count2))
  }
  print('page finished')
}
WriteOnNotebook2(15)
