arc_function = function(x, y) {
  r = (y^2 + (x / 2)^2) / (2 * y)
  arc_angle = 2 * acos(1 - y / r)
  arc_length = ( 2 * pi * r) * (arc_angle / 6.28319)
  return(arc_length) 
}