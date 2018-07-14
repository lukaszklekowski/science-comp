#Exercise 7
#Author: Łukasz Klekowski

function derivative()
    # Calculate derivative from h=2^0 to h=2^-54
    for i in 0:54
        x0 = Float64(1.0)
        n = Float64(-i)
        #Approximate derivative
        println("2^",n)
        approximation = Float64(((sin(x0+2^n)+cos(3.0*(x0+2^n)))-(sin(x0)+cos(3.0*x0)))/2.0^n)
        @printf "aprox:  %0.25f\n" approximation
        #Derivative
        deriv = Float64(cos(x0) - 3.0*sin(3.0*x0))
        @printf "deriv:  %0.25f\n" deriv
        #Error
        error = abs(deriv - approximation)
        @printf "error: %0.25f\n" error

    end
end
derivative()
