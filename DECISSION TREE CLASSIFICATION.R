install.packages("party")
library(party)

data("readingSkills", package = "party")  

input.dat <- readingSkills[1:200,]
output.tree <- ctree(nativeSpeaker ~ age + shoeSize + score, data = input.dat)

plot(output.tree)
