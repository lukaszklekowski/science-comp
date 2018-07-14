#Exercise 1
#Author: Łukasz Klekowski

include("ON_L5_Z1.jl")
using Zad1


#===========================8x8 NO_PIVOT===========================#

#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_8x8.txt")
# b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_8.txt")
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     saveVectorX("X_noError_noPivot_8x8.txt", x, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_8x8.txt")
# b = multiply(A, n, l)
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     err = comp_Error(x)
#     saveVectorX("X_Error_noPivot_8x8.txt", x, err, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
# #============================8x8 PIVOT============================#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_8x8.txt")
# b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_8.txt")
# A, x, error = Gauss(A, b, true, l, n)
# if error == 0
#     saveVectorX("X_noError_Pivot_8x8.txt", x, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_8x8.txt")
# b = multiply(A, n, l)
# A, x, error = Gauss(A, b, true, l, n)
# if error == 0
#     err = comp_Error(x)
#     saveVectorX("X_Error_Pivot_8x8.txt", x, err, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
# #===========================16x16 NO_PIVOT===========================#
#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_16x16.txt")
# b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_16.txt")
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     saveVectorX("X_noError_noPivot_16x16.txt", x, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_16x16.txt")
# b = multiply(A, n, l)
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     err = comp_Error(x)
#     saveVectorX("X_Error_noPivot_16x16.txt", x, err, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
# #============================16x16 PIVOT============================#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_16x16.txt")
# b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_16.txt")
# A, x, error = Gauss(A, b, true, l, n)
# if error == 0
#     saveVectorX("X_noError_Pivot_16x16.txt", x, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_16x16.txt")
# b = multiply(A, n, l)
# A, x, error = Gauss(A, b, true, l, n)
# if error == 0
#     err = comp_Error(x)
#     saveVectorX("X_Error_Pivot_16x16.txt", x, err, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
# #===========================10000x10000 NO_PIVOT===========================#
#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_10000x10000.txt")
# b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_10000.txt")
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     saveVectorX("X_noError_noPivot_10000x10000.txt", x, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_10000x10000.txt")
# b = multiply(A, n, l)
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     err = comp_Error(x)
#     saveVectorX("X_Error_noPivot_10000x10000.txt", x, err, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
# #============================10000x10000 PIVOT============================#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_10000x10000.txt")
# b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_10000.txt")
# A, x, error = Gauss(A, b, true, l, n)
# if error == 0
#     saveVectorX("X_noError_Pivot_10000x10000.txt", x, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_10000x10000.txt")
# b = multiply(A, n, l)
# A, x, error = Gauss(A, b, true, l, n)
# if error == 0
#     err = comp_Error(x)
#     saveVectorX("X_Error_Pivot_10000x10000.txt", x, err, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
# #===========================50000x50000 NO_PIVOT===========================#
#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_50000x50000.txt")
# b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_50000.txt")
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     saveVectorX("X_noError_noPivot_50000x50000.txt", x, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end
#
#
# A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_50000x50000.txt")
# b = multiply(A, n, l)
# A, x, error = Gauss(A, b, false, l, n)
# if error == 0
#     err = comp_Error(x)
#     saveVectorX("X_Error_noPivot_50000x50000.txt", x, err, n)
# elseif error == 1
#     print("Błąd, element przekątniowy równy 0.\n")
# end

#============================50000x50000 PIVOT============================#

A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_50000x50000.txt")
b = loadVector("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/b_50000.txt")
A, x, error = Gauss(A, b, true, l, n)
if error == 0
    saveVectorX("X_noError_Pivot_50000x50000.txt", x, n)
elseif error == 1
    print("Błąd, element przekątniowy równy 0.\n")
end

A, n, l = loadMatrix("/home/lukasz/Pulpit/Julia/Lista 5/Zad 1/A_50000x50000.txt")
b = multiply(A, n, l)
A, x, error = Gauss(A, b, true, l, n)
if error == 0
    err = comp_Error(x)
    saveVectorX("X_Error_Pivot_50000x50000.txt", x, err, n)
elseif error == 1
    print("Błąd, element przekątniowy równy 0.\n")
end
