#Exercise 6
#Author: Łukasz Klekowski
import PlotlyJS
function recursive(x0::Float64, c::Float64, n::Int, y::Array{Float64,1}, x1::Array{Float64,1})
    if (n==0)
        return x0
    else
        x = (recursive(x0,c,n-1,y,x1))^2 + c
        println(x)
#        push!(y,x)
#        push!(x1,x)
        return x
    end
end
#x1 = Float64[1.0,1.0]
#y = Float64[0]

println("\n1")
#x = 1:12
recursive(1.0,-2.0,40,y,x1)
#println(x1)
#println(y)
#PlotlyJS.plot(PlotlyJS.scatter(x=x1, y=y, mode="lines+markers" ,marker_color="blue", line_width=2))
println("\n2")
recursive(2.0,-2.0,40)
println("\n3")
recursive(1.99999999999999,-2.0,40)
println("\n4")

recursive(1.0,-1.0,40)
println("\n5")
recursive(-1.0,-1.0,40)
println("\n6")
recursive(0.75,-1.0,40)
println("\n7")
recursive(0.25,-1.0,40)
#function printfun(x1::Array{Float64,1},y::Array{Float64,1})

#    trace1 = PlotlyJS.scatter(;x=-3:3,y=2,mode="lines+markers")
#    trace2 = PlotlyJS.scatter(;x=-3:3,y=x,mode="lines")
#    trace3 = PlotlyJS.scatter(;x=x1,y=y,mode="lines+markers")


#    PlotlyJS.plot([trace1,trace2,trace3])
#end
#printfun(x1,y)
#printfun(x1,y)
