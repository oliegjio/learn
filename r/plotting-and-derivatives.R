library("plotly")

# Derivative.
D(quote(cos(x)), "x")

# 2D plotting:
plot(cos, from = -10, to = 10)

# 3D plotting:
plot_ly(x = c( 9, 8, 5, 1 ) , y = c( 1, 2, 4, 8 ) , z = c( 11, 8, 15, 3 ), type = "scatter3d", mode = "lines")