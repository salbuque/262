fish_stats = function(x, histogram) {
  most_common = which.max(summary(x))
  rarest_fish = which.min(summary(x))
  fish_histogram <- ggplot(data = summary(x)) + geom_histogram()
  total_fish  = sum(as.numeric(summary(x)))

  if (histogram == TRUE) {
    return(list(most_common, rarest_fish, total_fish, fish_histogram))
  } else {
    return(list(most_common, rarest_fish, total_fish))
  }
}
