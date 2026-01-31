GC_Calculation <- function(nucleotides){

 sequence <- toupper(nucleotides)
 nuc_vector <- strsplit(sequence, "")[[1]]
 
 
gc_counter <- 0
for (nuc in nuc_vector) {
  print(nuc)
  if(nuc == "G" | nuc == "C"){
    gc_counter <- gc_counter + 1
  }
  
}
gc_percent <- (gc_counter / length(nuc_vector)) * 100
return(gc_percent)
}
GC_Calculation("GCATTTAT")
GC_Calculation("gcaTTTAT")

