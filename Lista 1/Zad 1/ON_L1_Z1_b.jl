#Exercise 1b
#Author: Łukasz Klekowski


# Eta Float16

function eta16()
    eta = Float16(1.0)
    x = eta
    # Iterative calculation of eta in Float16 by dividing 1 by 2
    while x > Float16(0.0)
        eta = x
        x = x*Float16(0.5)
    end
    @printf "Eta float16   = %0.25f\n" eta
    @printf "Nextfloat16 = %0.25f\n" nextfloat(Float16(0.0))
end

# Eta Float32

function eta32()
    eta = Float32(1.0)
    x = eta
    # Iterative calculation of eta in Float16 by dividing 1 by 2
    while x > Float32(0.0)
        eta=x
        x = x*Float32(0.5)
    end
    @printf "Eta float32   = %0.150f\n" eta
    @printf "Nextfloat32 = %0.150f\n" nextfloat(Float32(0.0))
end

# Eta Float 64
function eta64()
    eta = Float64(1.0)
    x = eta
    # Iterative calculation of eta in Float16 by dividing 1 by 2
    while x > Float64(0.0)
        eta=x
        x = x*Float64(0.5)
    end
    @printf "Eta Float64   = %0.326f\n" eta
    @printf "Nextfloat64 = %0.326f\n" nextfloat(Float64(0.0))
end

eta16()
eta32()
eta64()
