r_max = function(IR, ASA, PR = 0, ir_data) {
  min_till_runoff = abs(60 * (ASA / (PR - IR)))
  # ASA = Allowable Surface Accumulation (inches)
  # IR =  Basic Soil Intake Rate (inches/hour)
  # result = Rtmax = maximum runtime for irrigation system prior to runoff occuring
  
  i<- 1
  days_overirrigated <- 0
  
  while (i <= length(ir_data)) {
    if (ir_data[i] > min_till_runoff) # if irrigation minutes are greater than min_till_runoff ( max irrigation till runoff) then add a day to days_overirrigated 
    days_overirrigated = days_overirrigated+1
    
    # incremental
    i = i + 1
  }
  return(days_overirrigated) #output is the # of days runoff was created
}