#Exercise 3
#Author: Łukasz Klekowski

function hilb(n::Int)
# Function generates the Hilbert matrix  A of size n,
#  A (i, j) = 1 / (i + j - 1)
# Inputs:
#	n: size of matrix A, n>0
#
# Usage: hilb (10)
#
# Pawel Zielinski
        if n < 1
         error("size n should be > 0")
        end
        A= Array{Float64}(n,n)
        for j=1:n, i=1:n
                A[i,j]= 1 / (i + j - 1)
        end
        return A
end

function matcond(n::Int, c::Float64)
# Function generates a random square matrix A of size n with
# a given condition number c.
# Inputs:
#	n: size of matrix A, n>1
#	c: condition of matrix A, c>= 1.0
#
# Usage: matcond (10, 100.0);
#
# Pawel Zielinski
        if n < 2
         error("size n should be > 1")
        end
        if c< 1.0
         error("condition number  c of a matrix  should be >= 1.0")
        end
        (U,S,V)=svd(rand(n,n))
        return U*diagm(linspace(1.0,c,n))*V'
end

#Function computes vector b then vector x in Hilbert matrix A (A*x = b)
function compute_x_hilbert(n::Int)
        A = hilb(n)
        b = A * ones(n,1)
        gauss_el_x = A \ b
        inv_x = inv(A) * b
        println("$n. deg.:\nRank: $(rank(A)) Cond: $(cond(A))
Relative error Gauss: $(abs((norm(ones(n,1))-norm(gauss_el_x))/norm(n,1)))
Relative error invert: $(abs((norm(ones(n,1))-norm(inv_x))/norm(ones(n,1))))
Gauss el. method:\n$gauss_el_x\n\nInvert method:\n$inv_x\n")
end

#Function computes vector b then vector x in random matrix A (A*x = b)
function compute_x_random(n::Int, i::Int)
        #Condition number
        c = Float64(10^i)
        A = matcond(n,c)
        b = A*ones(n,1)
        gauss_el_x = A\b
        inv_x = inv(A)*b
        println("Cond: 10^$i:\nRank: $(rank(A)) Cond: $(cond(A))
Relative error Gauss: $(abs((norm(ones(n,1))-norm(gauss_el_x))/norm(ones(n,1))))
Relative error invert: $(abs((norm(ones(n,1))-norm(inv_x))/norm(ones(n,1))))
Gauss el. method:\n$gauss_el_x\n\nInvert method:\n$inv_x\n")
end

function HilbertsMatrices()
        println("-------------------HILBERT MATRIX-------------------")
        for i in 1:15
                compute_x_hilbert(i)
        end
end

function RandomMatrices()
        i = [0,1,3,7,12,16]
        println("-------------------RANDOM MATRIX OF SIZE 5\n-------------------")
        for (index, value) in enumerate(i)
                compute_x_random(5,value)
        end
        println("-------------------RANDOM MATRIX OF SIZE 10\n-------------------")
        for (index, value) in enumerate(i)
                compute_x_random(10,value)
        end
        println("-------------------RANDOM MATRIX OF SIZE 20\n-------------------")
        for (index, value) in enumerate(i)
                compute_x_random(20,value)
        end
end

HilbertsMatrices()
RandomMatrices()
