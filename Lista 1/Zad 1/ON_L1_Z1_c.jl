#Exercise 1c
#Author: Łukasz Klekowski


# Infinity Float16

function inf16()
    max = Float16(1.0)
    # Iterative calculation of infinity in Float16 by multiplication by 2
    while !isinf(max)
        max = max*Float16(2)
    end

    @printf "Inf Float16   = %1f\n" prevfloat(max)
    @printf "Inf Float16 from realmax = %f\n" realmax(Float16)
end

# Infinity Float32

function inf32()
    max = Float32(1.0)
    # Iterative calculation of infinity in Float16 by multiplication by 2
    while !isinf(max)
        max = max*Float32(2)
    end
    @printf "Inf Float32   = %f\n" prevfloat(max)
    @printf "Inf Float32 from realmax = %f\n" realmax(Float32)
end

# Infinity Float64

function inf64()
    max = Float64(1.0)
    # Iterative calculation of infinity in Float16 by multiplication by 2
    while !isinf(max)
        max = max*Float64(2)
    end
    @printf "Inf Float64   = %f\n" prevfloat(max)
    @printf "Inf Float64 from realmax = %100f\n" realmax(Float64)
end


inf16()
inf32()
inf64()
