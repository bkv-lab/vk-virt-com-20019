# Bykov's R - Political groups in Vkontakte, 2019

# Check your working directory
getwd()
# If necessary, set your working directory
# setwd("/home/user/R")

# Create vectors about gender distribution, also create vectors for legend

genderFeminists <- c(12.2, 14.5, 15.0)
names(genderFeminists) <- c("Школа феминизма", "Чашечку феминизма", "Подслушано Феминизм")

genderGreens <- c(19.6, 20.3, 37.0)
names(genderGreens) <- c("Центр защиты прав животных «ВИТА»", "РазДельный сбор", "Московский мусор в Яросл.области")

genderLibertarians <- c(84.1, 82.6, 82.5)
names(genderLibertarians) <- c("Freedom Pride", "Либертарианство в схемах", "Libertarians & Conservatives")

genderArmy <- c(88.9, 81.9, 74)
names(genderArmy) <- c("Армия России", "Холодная война 2.0", "Телеканал «ЗВЕЗДА»")

# Build a picture with 4 parts
par(mfrow=c(2,2))
barplot(genderFeminists, main="Феминистки", ylim=c(0, 100))
barplot(genderLibertarians, main="Либертарианцы", ylim=c(0, 100))
barplot(genderGreens, main="Зелёные", ylim=c(0, 100))
barplot(genderArmy, main="Армия", ylim=c(0, 100))

# Export a picture to PNG-file
png(filename="gender.png", width=1080)
par(mfrow=c(2,2))
barplot(genderFeminists, main="Феминистки", ylim=c(0, 100))
barplot(genderLibertarians, main="Либертарианцы", ylim=c(0, 100))
barplot(genderGreens, main="Зелёные", ylim=c(0, 100))
barplot(genderArmy, main="Армия", ylim=c(0, 100))
dev.off()
