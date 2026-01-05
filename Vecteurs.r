
v <- 1:100



premiere_valeur <- v[1]
derniere_valeur <- v[length(v)]

cinq_premieres <- v[1:5]
cinq_dernieres <- v[(length(v)-4):length(v)]

tout_sauf_5_dernieres <- v[-((length(v)-4):length(v))]
tout_sauf_5_premieres <- v[-(1:5)]
tout_sauf_5_premieres_et_dernieres <- v[-c(1:5, (length(v)-4):length(v))]



selection_1_4_3dernieres <- v[c(1, 4, (length(v)-2):length(v))]
exclusion_1_4_3dernieres <- v[-c(1, 4, (length(v)-2):length(v))]
selection_1_et_3dernieres_sans_4 <- v[c(1, (length(v)-2):length(v))]



v_pair <- v[v %% 2 == 0]
v_impair <- v[v %% 2 == 1]



R <- rep("R", 20)



vect_mixte <- c(
  rep("R", 5),
  seq(0, 1, by = 0.125)
)



couleurs <- rep(c("Rouge", "Bleu", "Vert"), 3)


premiere_valeur
derniere_valeur
v_pair
v_impair
R
vect_mixte
couleurs
