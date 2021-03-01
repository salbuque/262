soil_intake = function(soil_class){
  IR = case_when(
    soil_class == "clay" ~  0.1,
    soil_class == "silty clay" ~  0.15, 
    soil_class == "clay loam" ~  0.2, 
    soil_class == "loam" ~  0.35, 
    soil_class == "sandy loam" ~  0.4, 
    soil_class == "loamy sand" ~  0.5, 
    soil_class == "sand" ~  0.6
  )

  return(IR)
}
