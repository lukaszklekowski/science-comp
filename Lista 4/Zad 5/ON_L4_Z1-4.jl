#Exercises 1-4
#Author: Łukasz Klekowski

__precompile__()
module Zad1_4

import PlotlyJS

export ilorazyRoznicowe, warNewton, naturalna, rysujNnfx

#Function calculates Difference quotients
# x - vector of nodes
# f - vector of values of function f in nodes
# @return vector fx - vector with difference quotients
function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
    fx = Array{Float64}(length(x))
    for i = 1:length(x)
        fx[i] = f[i]
    end
    for j = 2:length(x)
        for i=length(x):-1:j
            fx[i] = (fx[i] - fx[i-1])/(x[i]-x[i-j+1])
        end
    end
    return fx
end

#Function calculates polymonial value in Newton form using Horner alghoritm
# x - vector of nodes
# fx - vector of difference quotients
# t - point where we calculate value of polymonial
# @return w[1] - polymonial value

function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
    w = Array{Float64}(length(x))
    w[length(x)] = fx[length(fx)]
    for i = length(x)-1:-1:1
        w[i] =  fx[i] + (t - x[i]) * w[i + 1]
    end
    return w[1]
end

#Function calculates natural coefficients of the polymonial
# x - vector of nodes
# fx - vector of difference quotients
# @return vector a - vector with natural coefficients of the polymonial

function naturalna(x::Vector{Float64}, fx::Vector{Float64})
    a = Array{Float64}(length(x))
    a[length(x)] = fx[length(fx)]
    for i = length(x)-1:-1:1
        a[i] = fx[i]
        for j = i:length(x)-1
            a[j] = a[j] - (a[j + 1] * x[i])
        end
    end
    return a
end

#Function calculates interpolation and draws plot
# f - function
# a - begin of interval
# b - end of interval
# n - polymonial degree

function rysujNnfx(f, a::Float64, b::Float64, n::Int)
    x = Array{Float64}(n+1)
    fx = Array{Float64}(n+1)

    for i=0:n
        x[i+1] = a + i * ((b - a) / n)
        fx[i+1] = f(x[i+1])
    end

    ilorazy = ilorazyRoznicowe(x, fx)
    x1 = Float64[]
    y1 = Float64[]
    y2 = Float64[]
    h = (b - a) / (100000);

    for i = 0:100000
        x1 = push!(x1, a + i * h)
        y1 = push!(y1, f(x1[i+1]))
        y2 = push!(y2, warNewton(x,ilorazy, x1[i+1]))
    end

    trace1 = PlotlyJS.scatter(x = x1,y=y1,mode = "lines", name = "Function")
    trace2 = PlotlyJS.scatter(x=x1,y=y2,mode = "lines", name = "Interpolation")
    layout = PlotlyJS.Layout(plot_bgcolor="white",paper_bgcolor = "white")
    p = PlotlyJS.plot([trace1,trace2], layout)
end
end
