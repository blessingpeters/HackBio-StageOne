gc_content <- function(seq) {
  if(is.null(seq) || seq == "") {
    return(invisible())
  }
  
  seq <- toupper(seq)
  bases <- strsplit(seq, "")[[1]]
  gc_count <- sum(bases == "G" | bases == "C")
  return((gc_count / length(bases)) * 100)
}
gc_content("GCATTTAT") #25
gc_content("gcaTTTAT") #25