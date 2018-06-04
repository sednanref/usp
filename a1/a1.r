# 
tab <- read.csv('USECAPProgrammingSelf-AssessmentSurvey-num.csv', header = TRUE)


############# 2.a
experience <- sapply(tab[2], as.numeric)

exp_mean <- mean(experience, na.rm = TRUE)

print("Mean of programming experience: ")
exp_mean

############# 2.bexp
os_projects <- sapply(tab[8], as.numeric)

os_projects <- os_projects[!is.na(os_projects)]

print("Median of open Source projects' contribution: ")
median(os_projects)


############# 2.c
classConsideration <- tab[32]

considersBetter <- function(X) {
  if(X == 'A bit better' || X == 'Better' || X == 'Much better') {
    return(TRUE)
  } else {ta
    return(FALSE)
  }
}
considersBetter <- Vectorize(considersBetter)
print("Number of people that consider themselves at least a bit better than the their fellow students: ")
length(classConsideration[mapply(considersBetter, classConsideration)])


############# 3.a

programming_agreement <- tab[15]
barplot(table(programming_agreement), main = "I really enjoy programming",col = "darkgreen", ylab = "People", xlab = "Support level")

############# 3.b

programming_agreement <- sapply(programming_agreement, as.numeric)
print("Mean of 'I really enjoy programming' support")
mean(programming_agreement, na.rm = TRUE)

############# 3.c

# If we check the barplot on 3.a we could say that the vas mayority have a support on the statement 
# between 5 and 7, but when we take the mean we get a value that is barely greater than 5, this is because
# there is someone that selected '1' as his/her answer and therefore the mean value is very affected.