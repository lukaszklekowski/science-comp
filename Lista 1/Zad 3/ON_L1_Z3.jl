#Exercise 3
#Author: Łukasz Klekowski


# Interval [1-2]

function Inter1_2()
    x = Float64(1.0)
    #delta x
    deltax = Float64(2.0^-52.0)
    println("[1-2]")
    println(bits(x))
    # Printing next floats by adding delta
    for i in 1:10
        x1 = x + deltax
        println(bits(x1))
        println(bits(nextfloat(Float64(x))))
        x = x1
    end
end

# Interval [0.5-1]

function Inter05_1()
    x = Float64(0.5)
    #delta x
    deltax = Float64(2.0^-53.0)
    println("[0.5-1]")
    println(bits(x))
    # Printing next floats by adding delta
    for i in 1:10
        x1 = x + deltax
        println(bits(x1))
        println(bits(nextfloat(Float64(x))))
        x = x1
    end
end

# Interval [2-4]

function Inter2_4()
    x = Float64(2.0)
    #delta x
    deltax = Float64(2.0^-51.0)
    println("[2-4]")
    println(bits(x))
    # Printing next floats by adding delta
    for i in 1:10
        x1 = x + deltax
        println(bits(x1))
        println(bits(nextfloat(Float64(x))))
        x = x1
    end
end

Inter1_2()
Inter05_1()
Inter2_4()
