#Exercise 2
#Author: Łukasz Klekowski

#Macheps Float16

function KahansMachepsf16()
    # Calculation of macheps in Float16 by Kahan's formula
    k_macheps = Float16(3.0)*(Float16(4.0)/Float16(3.0) - Float16(1.0)) - Float16(1.0)
    @printf "Macheps f16 = %0.12f\n" macheps
    @printf "Macheps f16 from eps() = %0.12f\n" eps(Float16)
end

#Macheps Float32

function KahansMachepsf32()
    # Calculation of macheps in Float16 by Kahan's formula
    k_macheps = Float32(3.0)*(Float32(4.0)/Float32(3.0) - Float32(1.0)) - Float32(1.0)
    @printf "Macheps f32 = %0.25f\n" macheps
    @printf "Macheps f32 from eps() = %0.25f\n" eps(Float32)
end

#Macheps Float64

function KahansMachepsf64()
    # Calculation of macheps in Float16 by Kahan's formula
    k_macheps = Float64(3.0)*(Float64(4.0)/Float64(3.0) - Float64(1.0)) - Float64(1.0)
    @printf "Macheps f64 = %0.54f\n" macheps
    @printf "Macheps f64 from eps() = %0.54f\n" eps(Float64)
end

KahansMachepsf16()
KahansMachepsf32()
KahansMachepsf64()
