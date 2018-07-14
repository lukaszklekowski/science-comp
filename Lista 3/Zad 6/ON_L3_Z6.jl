#Exercise 6
#Author: Łukasz Klekowski

include("ON_L3_Z1-3.jl")
using Zad1_3

print("\n\n---------------------Funkcja pierwsza:---------------------\n\n")
bisec_method = mbisekcji(x -> exp(1 - x) - 1, -3.0, 5.0, 10.0^(-5), 10.0^(-5))
print("Metoda bisekcji dla przedziału [-3.0,5.0]: $bisec_method\n")
bisec_method = mbisekcji(x -> exp(1 - x) - 1, -1.41, 5.31, 10.0^(-5), 10.0^(-5))
print("Metoda bisekcji dla przedziału [-1.41,5.31]: $bisec_method\n")


new_method = mstycznych(x -> exp(1 - x) - 1, x -> -1.0 * exp(1 - x), 0.7, 10.0^(-5), 10.0^(-5), 100)
print("Metoda stycznych dla x0 = 0.7: $new_method\n")

x0 = 0.0
for i in 1:50
    x0 = x0 + 1.0
    new_method = mstycznych(x -> exp(1 - x) - 1, x -> -1.0 * exp(1 - x), x0, 10.0^(-5), 10.0^(-5), 1000)
    print("Metoda stycznych dla x0 = $x0: $new_method\n")
end

sec_method = msiecznych(x -> exp(1 - x) - 1, 0.7, 1.4, 10.0^(-5), 10.0^(-5), 100)
print("Metoda siecznych dla punktów startowych x0 = 0.7, x1 = 1.4: $sec_method\n")
sec_method = msiecznych(x -> exp(1 - x) - 1, -98.0, 98.0, 10.0^(-5), 10.0^(-5), 100)
print("Metoda siecznych dla punktów startowych x0 = -98.0, x1 = 98.0: $sec_method\n")


print("\n\n---------------------Funkcja druga:---------------------\n\n")


bisec_method = mbisekcji(x -> x * exp(-x), -1.0, 1.0, 10.0^(-5), 10.0^(-5))
print("Metoda bisekcji dla przedziału [-1.0,1.0]: $bisec_method\n")
bisec_method = mbisekcji(x -> x * exp(-x), -7.71, 6.32, 10.0^(-5), 10.0^(-5))
print("Metoda bisekcji dla przedziału [-7.71,6.32]: $bisec_method\n")

new_method = mstycznych(x -> x * exp(-x), x -> -1 * exp(-x) * (x-1), 0.2, 10.0^(-5), 10.0^(-5), 100)
print("Metoda stycznych dla x0 = 0.2: $new_method\n")

x0 = 0.0
for i in 1:50
    x0 = x0 + 1.0
    new_method = mstycznych(x -> x * exp(-x), x -> -1 * exp(-x) * (x-1), x0, 10.0^(-5), 10.0^(-5), 1000)
    print("Metoda stycznych dla x0 = $x0: $new_method\n")
end

sec_method = msiecznych(x -> x * exp(-x), -1.5, 1.6, 10.0^(-5), 10.0^(-5), 100)
print("Metoda siecznych dla punktów startowych x0 = -1.5, x1 = 1.6: $sec_method")
sec_method = msiecznych(x -> x * exp(-x), -0.3, 0.3, 10.0^(-5), 10.0^(-5), 100)
print("Metoda siecznych dla punktów startowych x0 = -0.3, x1 = 0.3: $sec_method\n")
