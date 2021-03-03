auto_pwr = function (V, A=9, g=9.8, p_air = 1.2, Pb, crolling, drag = 0.3, m) 
  {
  result = crolling * m *g *V + ((0.5) * A)*p_air*drag*V^3
  }
