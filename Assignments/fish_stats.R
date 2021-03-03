fish_stats = function(fish) {
  
  fish<- as.factor(fish[1])
  most_common = which.max(summary(fish))
  rarest_fish = which.min(summary(fish))
  total_fish  = sum((summary(fish)))
  
  return(list(most_common, rarest_fish, total_fish))
}
