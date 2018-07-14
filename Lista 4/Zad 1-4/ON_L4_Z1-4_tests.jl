#Exercises 1-4
#Author: Łukasz Klekowski

include("ON_L4_Z1-4.jl")
using Zad1_4
using Base.Test

@test ilorazyRoznicowe([0.0,2.0,3.0,5.0,6.0],[0.0,8.0,27.0,125.0,216.0]) == [0.0, 4.0, 5.0, 1.0,0.0]
@test ilorazyRoznicowe([-2.0,-1.0,0.0,1.0,2.0,3.0],[-25.0,3.0,1.0,-1.0,27.0,235.0]) == [-25.0,28.0,-15.0,5.0,0.0,1.0]

@test warNewton([-2.0,-1.0,0.0,1.0,2.0,3.0],[-25.0,28.0,-15.0,5.0,0.0,1.0], 3.0) == 235
@test warNewton([0.0,2.0,3.0,5.0,6.0],[0.0, 4.0, 5.0, 1.0,0.0] , 2.0) == 8.0

@test naturalna([6.0,2.0,7.0,0.0],[1.0,2.0,3.0,4.0]) == [-311.0,250.0,-57.0,4.00]
@test naturalna([-2.0,-1.0,0.0,1.0,2.0,3.0],[-25.0,28.0,-15.0,5.0,0.0,1.0]) == [1.0,-3.0,0.0,0.0,0.0,1.0]
