#Exercise 5
#Author: Łukasz Klekowski

include("ON_L4_Z1-4.jl")
using Zad1_4

p = rysujNnfx(x->e^x, 0.0, 1.0, 5)
PlotlyJS.savefig_cairosvg(p,"z5a5.png")
p = rysujNnfx(x->e^x, 0.0, 1.0, 10)
PlotlyJS.savefig_cairosvg(p,"z5a10.png")
p = rysujNnfx(x->e^x, 0.0, 1.0, 15)
PlotlyJS.savefig_cairosvg(p,"z5a15.png")
p = rysujNnfx(x->(x^2)*sin(x), -1.0, 1.0, 5)
PlotlyJS.savefig_cairosvg(p,"z5b5.png")
p = rysujNnfx(x->(x^2)*sin(x), -1.0, 1.0, 10)
PlotlyJS.savefig_cairosvg(p,"z5b10.png")
p = rysujNnfx(x->(x^2)*sin(x), -1.0, 1.0, 15)
PlotlyJS.savefig_cairosvg(p,"z5b15.png")
