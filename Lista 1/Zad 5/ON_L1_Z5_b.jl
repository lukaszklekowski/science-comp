#Exercise 5b
#Author: Łukasz Klekowski

# Vectors

x=Float64[2.718281828,-3.141592654,1.414213562,0.5772156649,0.3010299957]
y=Float64[1486.2497,878366.9879,-22.37492,4773714.647,0.000185049]
#correctProduct = Float64(Float64(-1.000657107000000)*Float64(10.0)^Float64(-11))
correctProduct = Float64(-1.000657107000000e-11)
# First algorithm

function firstAlgorithm()
    s_64 = Float64(0.0)
    # Scalar product
    for i in 1 :5
        s_64 = s_64 + x[i]*y[i]
    end
    relative_error = Float32(abs(s_64 - correctProduct)/correctProduct)
    @printf "I algorithm   = %0.30e\n" s_64
    @printf "I algorithm relative error   = %0.30e\n" relative_error
end

# Second algorithm

function secondAlgorithm()
    s_64 = Float64(0.0)
    # Scalar product in reverse order
    for i in 5:-1:1
        s_64 = s_64 + x[i]*y[i]
    end
    relative_error = Float32(abs(s_64 - correctProduct)/correctProduct)
    @printf "II algorithm   = %0.30e\n" s_64
    @printf "II algorithm relative error   = %0.30e\n" relative_error
end

# 3 algorytm

function thirdAlgorithm()
    # Arrays with positives and negatives products
    minus = Float64[]
    plus = Float64[]

    # Mulitiplying
    for i in 1:5
        ss = x[i]*y[i]
        if ss<0
            push!(minus,ss)
        else
            push!(plus,ss)
        end
    end

    # Sorting Arrays

    sort(minus, rev=true)
    sort(plus)
    sm = Float64(0.0)
    sp = Float64(0.0)
    # Adding results in the correct order
    for i in 1:size(minus,1)
        sm = sm+minus[i]
    end
    for i in 1:size(plus,1)
        sp = sp+plus[i]
    end
    # Printing scalar product
    relative_error = Float32(abs(sp+sm - correctProduct)/correctProduct)
    @printf "III algorithm   = %0.30e\n" sp+sm
    @printf "III algorithm relative error   = %0.30e\n" relative_error
end
# Fourth algorithm

function fourthAlgorithm()
    # Arrays with positives and negatives products
    minus = Float64[]
    plus = Float64[]
    # Mulitiplying
    for i in 1:5
        ss = x[i]*y[i]
        if ss<0
            push!(minus,ss)
        else
            push!(plus,ss)
        end
    end
    # Sorting Arrays
    sort(minus)
    sort(plus, rev=true)
    sm = Float64(0.0)
    sp = Float64(0.0)
    # Adding results in the correct order
    for i in 1:size(minus,1)
        sm = sm+minus[i]
    end
    for i in 1:size(plus,1)
        sp = sp+plus[i]
    end
    # Printing scalar product
    relative_error = Float32(abs(sp+sm - correctProduct)/correctProduct)
    @printf "IV algorithm   = %0.30e\n" sp+sm
    @printf "IV algorithm relative error   = %0.30e\n" relative_error
end

firstAlgorithm()
secondAlgorithm()
thirdAlgorithm()
fourthAlgorithm()
