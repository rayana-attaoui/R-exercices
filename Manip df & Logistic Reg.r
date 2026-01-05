# Exercice  4 Manip df
# Installation (une seule fois)
install.packages("questionr")
library(questionr)

# Chargement
library(questionr)

# Chargement du jeu de données
df <- read.table(
  "questionr.json",
  header = TRUE
)

# Description globale
describe(df)

# 2) 
df$age_classe <- icut(df$age, breaks = c(16, 25, 45, 65, 99))
df <- irec(df, qualif)
df <- iorder(df, nivetud)
#3)  
#install.packages("dataMaid")
library(dataMaid)

# Génération du codebook
makeCodebook(
  df,
  output = "html"  # ou "pdf", "word"
)
#4 )
mean(df$heures.tv, na.rm = TRUE)
sd(df$heures.tv, na.rm = TRUE)
min(df$heures.tv, na.rm = TRUE)
max(df$heures.tv, na.rm = TRUE)
range(df$heures.tv, na.rm = TRUE)
median(df$heures.tv, na.rm = TRUE)
quantile(df$heures.tv, na.rm = TRUE)

summary(df$heures.tv)
#4.2 
# Boxplot
pdf("boxplot_heures_tv.pdf")
boxplot(df$heures.tv, main = "Boxplot heures TV")
dev.off()

# Histogramme
pdf("hist_heures_tv.pdf")
hist(
  df$heures.tv,
  breaks = c(0, 1, 4, 9, 12),
  main = "Histogramme heures TV",
  xlab = "Heures de TV / jour"
)
dev.off()
# 5.1 ) 
table(df$sexe)
table(df$occup)
table(df$freres.soeurs)
table(df$qualif)
table(df$trav.satisf)
# 5.2 )
freq(df$sexe)
freq(df$occup)
freq(df$qualif)
# 5.3 )
# Diagramme en bâtons (recommandé)
plot(table(df$sexe))

# Camembert
pie(table(df$sexe))
# 6) 
sum(is.na(df$sport))   # doit être 0
table(df$sport)
table(df$sport)["Non"]

# 7 )
table(df$nivetud)
sum(is.na(df$nivetud))  # 112 NA
# creation de etud 
df$etud <- NA
df$etud[df$nivetud %in% c("CAP", "BEP", "Technique")] <- "Technique/Professionnel"
df$etud[df$nivetud == "Primaire"] <- "Primaire"
df$etud[df$nivetud %in% c("Licence", "Master", "Doctorat")] <- "Supérieur"
df$etud[df$nivetud == "Secondaire"] <- "Secondaire"

df$etud <- factor(df$etud)
table(df$etud)
# 8) 
modele_logit <- glm(
  sport ~ age + sexe + etud + relig + heures.tv,
  data = df,
  family = binomial
)

summary(modele_logit)