#Exercise 6
#Author: Łukasz Klekowski

function compareFandG()
    # Call function 8^-1 to 8^-10
    for i in 1:10
        k=Float64(-i)
        x = Float64(8^k)
        println("8^-", i)
        f(x)
        g(x)
    end
end

#Function f from exercise. "x" - argument of function from exercise

function f(x :: Float64)
    sum = Float64(sqrt(x^2 + 1.0)) -1.0
    print("f(): ")
    @printf "%0.25f\n" sum
end

#Function g from exercise. "x" - argument of function from exercise

function g(x :: Float64)
    sum = Float64(x^2/((sqrt(x^2+1))+1))
    print("g(): ")
    @printf "%0.25f\n" sum
end

compareFandG()
