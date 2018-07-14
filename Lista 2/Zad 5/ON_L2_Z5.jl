#Exercise 5
#Author: Łukasz Klekowski

function population(p0::Number, r::Number, n::Int, ten_it::Bool)
    if (n==0)
        return p0
    else
        pn = population(p0,r,n-1, ten_it)
        if (n==10 && ten_it==true)
            pn1 = pn+r*pn*(1-pn)
            pn1 = floor(pn1,3)
            println("n: $n - $pn1")
            return pn1
        else
            pn1 = pn+r*pn*(1-pn)
            println("n: $n - $pn1")
            return pn1
        end
    end
end



population(Float32(0.01), Float32(3.0), 40, false)
population(Float32(0.01), Float32(3.0), 40, true)
population(Float64(0.01), Float64(3.0), 40, false)
