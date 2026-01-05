# Générer un nombre aléatoire entre 0 et 1
answer <- sample(0:1, 1)

cat("Est-ce que tu aimes Python ?\n")

if (answer == 0) {
  cat("Python réfléchit...\n")
  Sys.sleep(1.5)
  cat("Tu aimes Python :)\n")
} else {
  cat("Python réfléchit...\n")
  Sys.sleep(1.5)
  cat("Tu n'aimes pas Python :(\n")
}
