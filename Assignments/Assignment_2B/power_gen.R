power_gen = function (V, A=9, g=9.8, p_air = 1.2, Pb, crolling= 0.015, drag = 0.3, m) 
{
  
  if(V < 200) return("Speed cannot be racecar status")
  if(g != 9.8) return("Error Gravity is Constant")
  if(m< 0) return("mass is neither created nor destroyed")
  
  result = crolling * m *g *V + ((0.5) * A)*p_air*drag*V^3
}
