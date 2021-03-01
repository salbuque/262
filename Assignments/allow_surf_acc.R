Allow_surf_acc = function(IR) {
  ASA = case_when(
    IR == 0.1 ~ 0.2,
    IR == 0.15 ~  0.23,
    IR == 0.2 ~  0.26,
    IR == 0.35 ~  0.3,
    IR == 0.4 ~  0.33,
    IR == 0.5 ~  0.36,
    IR == 0.6 ~  0.4
  )
  return(ASA)
}
