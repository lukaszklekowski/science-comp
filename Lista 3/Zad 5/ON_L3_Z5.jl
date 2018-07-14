#Exercise 5
#Author: Łukasz Klekowski

include("ON_L3_Z1-3.jl")
using Zad1_3

bisec_method = mbisekcji(x -> 3*x - exp(x), 0.0, 1.0, 10.0^(-4), 10.0^(-4))
print("Wynik [0,1]: $bisec_method")

bisec_method = mbisekcji(x -> 3*x - exp(x), 1.0, 2.0, 10.0^(-4), 10.0^(-4))
print("Wynik [1,2]: $bisec_method")
