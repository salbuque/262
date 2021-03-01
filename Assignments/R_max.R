r_max = function(IR, ASA, PR = 0, ir_data) {
  min_till_runoff = abs(60 * (ASA / (PR - IR)))
  # ASA = Allowable Surface Accumulation (inches)
  # IR =  Basic Soil Intake Rate (inches/hour)
  # result = Rtmax = maximum runtime for irrigation system prior to runoff occuring
  
  i<- 0
  
  while (i <= length(ir_data)) {
    if (ir_data[i] < min_till_runoff)
      return(min_till_runoff - ir_data[i])
    else
      return("Shut off Irrigation - Runoff Risk")
    
    # incremental
    i = i + 1
  }
}