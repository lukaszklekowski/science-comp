#Exercises 1-3
#Author: Łukasz Klekowski

include("ON_L3_Z1-3.jl")
using Zad1_3
using Base.Test

del = 10.0^(-5)
eps = 10.0^(-5)
maxit = 1000

# f(x) = 3x - 3
# root = 1.0

f     = x -> 3x - 3
pf = x -> 3
r = 1.0

@test mbisekcji(f, -5.0, 5.0, del, eps)[1] ≈ r atol=eps
@test mbisekcji(f, -125.0, 125.0, del, eps)[1] ≈ r atol=eps

@test mstycznych(f, pf, 3.1, del, eps, maxit)[1] ≈ r atol=eps
@test mstycznych(f, pf, -2.0, del, eps, maxit)[1] ≈ r atol=eps

@test msiecznych(f, -1.0, 3.0, del, eps, maxit)[1] ≈ r atol=eps
@test msiecznych(f, -41.0, 43.0, del, eps, maxit)[1] ≈ r atol=eps

# f(x) = sin(3x - 1)
# root = 1.0
f = x -> sin(3*x-1)
pf = x -> 3*cos(1-3*x)
r = 0.333333333333

@test mbisekcji(f, 0.0, 0.5, del, eps)[1] ≈ r atol=eps
@test mbisekcji(f, -60000.0, 60000.0, del, eps) == (0,0,0,1)

@test mstycznych(f, pf, 0.25, del, eps, maxit)[1] ≈ r  atol=eps
@test mstycznych(f, pf, 0.4, del, eps, maxit)[1] ≈ r atol=eps

@test msiecznych(f, 0.0, 1.0, del, eps, maxit)[1] ≈ r atol=eps
