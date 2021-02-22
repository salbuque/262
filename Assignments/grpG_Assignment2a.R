---
  title: "auto_pwr_fx.R"
author: "Simone Albuquerque, Teague Tran, Elmera Azadpour"
date: "2/21/2021"
output: html_document
---
  
#run packages
library(tidyverse)
library(ggplot2)


#convert velocity values to m/s
V<- c(108, 80, 120, 40)

new_values = function (V) {result = V/3.6}
  
#define velocity 
velocity<- new_values(V)

#define mass
heavy_mass <- 31752
light_mass <- 23814

# function 
auto_pwr_fx = function (V, A=9, g=9.8, p_air = 1.2, Pb, crolling= 0.015, drag = 0.3, m) {
  result = crolling * m *g *V + (1/2) * A*p_air*drag*V^3
  }

# function results
hvy_pwr<- auto_pwr_fx(V= velocity, m = heavy_mass) 
light_pwr<- auto_pwr_fx(V= velocity, m= light_mass)

#results df for heavy and light cars
hvy_pwr_df<- tibble(hvy_pwr, heavy_mass, velocity) 
light_pwr_df<- tibble(light_pwr, light_mass, velocity) 
 
#graph it~! 
power_graph<- ggplot()+ 
  geom_line(data = hvy_pwr_df, 
            aes(x = velocity,
            y = hvy_pwr), 
            color = "grey1", 
            show.legend = FALSE)+
  geom_line(data =light_pwr_df, 
            aes(x = velocity,
                y = light_pwr), 
            color = "firebrick1",
            show.legend = FALSE)+
  theme_classic()+
  annotate(geom="text", 
           x=22, 
           y=150000	, 
           label="Heavy Vehicle",
           color="grey1") + 
  annotate(geom="text", 
           x=28, 
           y=100000	, 
           label="Light Vehicle",
           color="firebrick1")+
  labs( x = "Velocity (m/s)", 
        y = "Power (watts)", 
        title = "Car Power Based on Car Weight and Velocity")
  
power_graph
