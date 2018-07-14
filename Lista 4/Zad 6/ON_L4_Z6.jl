#Exercise 6
#Author: Łukasz Klekowski

include("ON_L4_Z1-4.jl")
using Zad1_4

p = rysujNnfx(x->abs(x), -1.0, 1.0, 5)
PlotlyJS.savefig_cairosvg(p,"z6a5.png")
p = rysujNnfx(x->abs(x), -1.0, 1.0, 10)
PlotlyJS.savefig_cairosvg(p,"z6a10.png")
p = rysujNnfx(x->abs(x), -1.0, 1.0, 15)
PlotlyJS.savefig_cairosvg(p,"z6a15.png")
p = rysujNnfx(x->1/(1+x^2), -5.0, 5.0, 5)
PlotlyJS.savefig_cairosvg(p,"z6b5.png")
p = rysujNnfx(x->1/(1+x^2), -5.0, 5.0, 10)
PlotlyJS.savefig_cairosvg(p,"z6b10.png")
p = rysujNnfx(x->1/(1+x^2), -5.0, 5.0, 15)
PlotlyJS.savefig_cairosvg(p,"z6b15.png")
