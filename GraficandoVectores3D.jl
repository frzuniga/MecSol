
# Plotting a 3D vector from https://discourse.julialang.org/t/plot-3d-vector-field/2117/2
# Pkg.add("PyPlot")

using PyPlot

fig = figure()
ax = fig[:gca](projection="3d")

N = 10
x,y,z,u,v,w = [randn(N) for i in 1:6]
#z = z/4
ax[:quiver](x,y,z, u,v, w)
show()

#?quiver   # queremos averiguar lo que hace quiver





