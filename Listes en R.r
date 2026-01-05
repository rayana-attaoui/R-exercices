### Données de départ
title <- "Ma première liste en R"
id_client <- c("Id1", "Id2", "Id3", "Id4", "Id5")
product <- c("aa", "bb", "cc", "dd", "ee")
price <- c(101, 102, 103, 104, 105)
paiement_status <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

l <- list(title, id_client, product, price, paiement_status)


### 1) 
l[[length(l)]]


### 2) 
l[[2]]


### 3) 
# (accès à un range non ordonné)
l[c(2, 5)]


### 4) 
# (accès à un range ordonné)
l[3:5]


### 5) 
# (privation sur un item)
l[-2]


### 6) 
# (privation sur plusieurs items)
l[-c(1, 2)]
