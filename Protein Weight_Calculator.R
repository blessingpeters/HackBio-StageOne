
aa_weights <- c(
  A = 89.09,  R = 174.20, N = 132.12, D = 133.10, C = 121.15,
  E = 147.13, Q = 146.15, G = 75.07,  H = 155.16, I = 131.18,
  L = 131.18, K = 146.19, M = 149.21, F = 165.19, P = 115.13,
  S = 105.09, T = 119.12, W = 204.23, Y = 181.19, V = 117.15
)

protein_weight <- function(sequence = "Blessing") {
  sequence <- toupper(sequence)
  aa_vector <- strsplit(sequence, "")[[1]]
  total_weight <- 0

  for (aa in aa_vector) {
    if (aa %in% names(aa_weights)) {
      total_weight <- total_weight + aa_weights[aa]
    } else {
      return(0)
    }
  }
  total_weight_kda <- total_weight / 1000
  return(total_weight_kda)
}

protein_weight("ACDE")      # Should return the sum of weights for
protein_weight("Blessing")
