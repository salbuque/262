auto_pwr = function (V, A=9, g=9.8, p_air = 1.2, Pb, crolling= 0.015, drag = 0.3, m) {
  result = crolling * m *g *V + (1/2) * A*p_air*drag*V^3
  }
