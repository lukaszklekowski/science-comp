#Exercise 4
#Author: Łukasz Klekowski


include("ON_L3_Z1-3.jl")
using Zad1_3

bisec_method = mbisekcji(x -> sin(x) - (0.5 * x)^2, 1.5, 2.0, 0.5 * 10.0^(-5), 0.5 * 10.0^(-5))
print("Metoda bisekcji: $bisec_method\n")

new_method = mstycznych(x -> sin(x) - (0.5 * x)^2, x -> cos(x) - (0.5 * x), 1.5, 0.5 * 10.0^(-5), 0.5 * 10.0^(-5), 100)
print("Metoda stycznych: $new_method\n")

sec_method = msiecznych(x -> sin(x) - (0.5 * x)^2, 1.0, 2.0, 0.5 * 10.0^(-5), 0.5 * 10.0^(-5), 100)
print("Metoda siecznych: $sec_method\n")
