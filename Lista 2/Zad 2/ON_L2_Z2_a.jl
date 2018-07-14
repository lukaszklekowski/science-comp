#Exercise 2a
#Author: Łukasz Klekowski
#generating plot
import PlotlyJS

x =Float64[]
y = Float64[]
for i in 1:800
    x = push!(x,(i-40)*0.1)
    y = push!(y,(e^((i-40)*0.1))*log(1+e^(-((i-40)*0.1))))
end
PlotlyJS.plot(PlotlyJS.scatter(x=x, y=y, marker_color="blue", line_width=2))
