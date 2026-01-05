
v <- c(-1, 2, 4, 2, 0)
w <- c(0, 3, -1, 0, 2)


somme_v_w <- v + w
difference_v_w <- v - w
produit_v_w <- v * w
rapport_v_w <- v / w  

# Opérations avec un scalaire
v_plus_3 <- v + 3


somme_elements_v <- sum(v)
produit_elements_v <- prod(v)



v_superieur_w <- v > w



log_v <- log(v)   

indetermine <- 0 / 0   


z <- c(v, w)





z_plus_v <- z + v
z_moins_v <- z - v
z_fois_v <- z * v
z_sur_v <- z / v



if (length(z) == length(v)) {
  z_plus_v_corrige <- z + v
  z_moins_v_corrige <- z - v
  z_fois_v_corrige <- z * v
  z_sur_v_corrige <- z / v
} else {
  message("Erreur : les vecteurs n'ont pas la même longueur. Opération impossible sans recyclage.")
}



somme_v_w
difference_v_w
produit_v_w
rapport_v_w
v_superieur_w
log_v
z
