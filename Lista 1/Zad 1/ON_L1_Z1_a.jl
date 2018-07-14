#Exercise 1a
#Author: Łukasz Klekowski


# Macheps Float16

function machepsFloat16()
    x = Float16(1.0)
    macheps=x
    # Iterative calculation of macheps in Float16 by dividing 1 by 2
    while Float16(1.0) + x > Float16(1.0)
        macheps=x
        x = x*Float16(0.5)
    end
    @printf "Macheps f16 = %0.12f\n" macheps
    @printf "Macheps f16 from eps() = %0.12f\n" eps(Float16)
end

# Macheps Float32

function machepsFloat32()
    x = Float32(1.0)
    macheps=x
    # Iterative calculation of macheps in Float32 by dividing 1 by 2
    while Float32(1.0) + x > Float32(1.0)
        macheps=x
        x = x*Float32(0.5)
    end
    @printf "Macheps f32 = %0.25f\n" macheps
    @printf "Macheps f32 from eps() = %0.25f\n" eps(Float32)
end

# Macheps Float 64

function machepsFloat64()
    x = Float64(1.0)
    macheps=x
    # Iterative calculation of macheps in Float64 by dividing 1 by 2
    while Float64(1.0) + x > Float64(1.0)
        macheps=x
        x = x*Float64(0.5)
    end
    @printf "Macheps f64 = %0.54f\n" macheps
    @printf "Macheps f64 from eps() = %0.54f\n" eps(Float64)
end

machepsFloat16()
machepsFloat32()
machepsFloat64()
