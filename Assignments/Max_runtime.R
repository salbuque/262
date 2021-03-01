soil_type = function(ASA = c(0.2, 0.23, 0.26, 0.3, 0.33, 0.36, 0.4), IR = c(0.1, 0.15, 0.2, 0.35, 0.4, 0.5, 0.6)){
  case_when(
    IR  == 0.1 | ASA == 0.2 ~ "Clay"
    IR  == 0.15 | ASA == 0.23 ~ "Silty Clay"
    IR  == 0.2 | ASA == 0.26 ~ "Clay Loam"
    IR  == 0.35 | ASA == 0.3 ~ "Silty Clay"
  )
}

name <- function(variables) {
  
}