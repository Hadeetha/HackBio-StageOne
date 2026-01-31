protein_weight <- function(sequence = "HADITHA") {
 #amino acids molecular weights in Daltons
   amino_acids_weights <- c(
    A = 89.09, R = 174.20, N = 132.12, D = 133.10, C = 121.15,
    E = 147.13, Q = 146.15, G = 75.07, H = 155.16, I = 131.18,
    L = 131.18, K = 146.19, M = 149.21, F = 165.19, P = 115.13,
    S = 105.09, T = 119.12, W = 204.23, Y = 181.19, V = 117.15
  )
  #convert the input to uppercase
   sequence <- toupper(sequence)
 #split the sequence into individual letters
    amino_acids <- strsplit(sequence, "") [[1]]
 #assign weights and return 0 for invalid characters
     weights <- if (any(!amino_acids %in% names(amino_acids_weights))) {
    return(0)
  }
  #get the weights of each letter
     actual_values <- amino_acids_weights[amino_acids]
  #calculate and convert to kDa
     total_weights_kDa <- sum(actual_values) / 1000
  
  return(total_weights_kDa)
}
#run the function
protein_weight()
