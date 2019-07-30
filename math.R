arc_function = function(x, y) {
  r = (y^2 + (x / 2)^2) / (2 * y)
  arc_angle = 2 * acos(1 - y / r)
  arc_length = ( 2 * pi * r) * (arc_angle / 6.28319)
  return(arc_length) 
}

radius = function(x, y) {
  r = (y^2 + (x / 2)^2) / (2 * y)
  return(r)
}

angle = function(x, y) {
  r = (y^2 + (x / 2)^2) / (2 * y)
  arc_angle = 2 * acos(1 - y / r)
  return(arc_angle)
}

draw_arc = function(a, b) {
  r = (b^2 + (a / 2)^2) / (2 * b)
  center = c(a, b - r)
  circle = (x - a) ** 2 + (y - b) ** 2 = r ** 2
  arc_angle = 2 * acos(1 - b / r)
  x_axis = seq(0, a, .001)
}
