# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?


# n!  = n * (n-1) * (n-2) * (n-3) * ... * 3 * 2 * 1
# 2*2 grid 
# routes = (4*3)/(2*1) = 6

# 3*3 grid
#  routes = (6 * 5 * 4) / (3 * 2 * 1) = 20

# 4* 4 grid
#  routes = (8 * 7 * 6 * 5)/(4 * 3 * 2 * 1) = 70

# ...

# 20* 20 grid
routes = (21..(20*2)).inject(:*) / (1..20).inject(:*)
puts routes
