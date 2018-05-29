# 
tab <- read.csv('USECAPProgrammingSelf-AssessmentSurvey-num.csv', header = TRUE)

experience <- sapply(tab[2], as.numeric)

exp_mean <- mean(experience)

print("Mean of programming experience: ")
exp_mean

os_projects <- sapply(tab[8], as.numeric)

os_projects <- os_projects[!is.na(os_projects)]

print("Mean of programming experience: ")
median(os_projects)

classConsideration <- tab[32]

considersBetter <- function(X) {
  if(X == 'A bit better' || X == 'Better' || X == 'Much better') {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
considersBetter <- Vectorize(considersBetter)
print("Number of people that consider themselves at least a bit better than the their fellow students: ")
length(classConsideration[mapply(considersBetter, classConsideration)])