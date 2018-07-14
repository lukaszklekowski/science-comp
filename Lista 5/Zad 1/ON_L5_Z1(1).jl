#Exercise 1
#Author: Łukasz Klekowski

module Zad1

export loadMatrix, loadVector, Gauss, multiply, comp_Error, saveVectorX

#Function loads the matrix from the file
# fileName - path to the file

function loadMatrix(fileName::String)
      n = 0
      l = 0
      I = Int64[]
      J = Int64[]
      V = Float64[]
      open(fileName) do f
          line = split(readline(f))
          n = parse(Int64, line[1])
          l = parse(Int64, line[2])
          while !eof(f)
              line = split(readline(f))
              I = push!(I, parse(Int64, line[1]))
              J = push!(J, parse(Int64, line[2]))
              V = push!(V, parse(Float64, line[3]))
          end
      end
      S = sparse(I, J, V)
      return S, n, l
  end

#Function loads the vector b from the file
# fileName - path to the file

function loadVector(fileName::String)
     n = 0
     b = Vector{Float64}()
     open(fileName) do f
         n = parse(Int, readline(f))
         i = 1
         while !eof(f)
             b = push!(b,parse(Float64, readline(f)))
             i += 1
         end
     end
     return b
 end

#Function calculates vector x with Gauss method
# A - matrix A
# b - vector b
# l - size of block matrices
# n - size of main matrix

function Gauss(A::SparseMatrixCSC{Float64, Int64}, b:: Vector{Float64}, pivot::Bool, l::Int64, n::Int64)
    end_of_col = l
    end_of_row = 2*l+2;
    indeks = 0
    x = ones(n)
    for k=1:n-1
        if ((k-1)%l==0 )
            end_of_col = end_of_col+l
            end_of_row = end_of_row+l
        end
        if (end_of_col>n)
            end_of_col = n
        end
        if (end_of_row>n)
            end_of_row = n
        end
        if pivot == true
            maxtemp = 0
            for i=k:end_of_col
                if abs(A[i,k]) > maxtemp
                    maxtemp = abs(A[i,k])
                    indeks = i
                end
            end
            for j =k: end_of_row
                A[k,j], A[indeks,j] = A[indeks,j], A[k,j]
            end
            b[indeks], b[k] = b[k], b[indeks]
        end

        if (abs(A[k,k]) < eps(Float64))
            return A, x, 1
        end

        for i=k+1:end_of_col
            lm = A[i,k]/A[k,k]
            for j=k+1:end_of_row
                A[i,j] = A[i,j] - lm*A[k,j]
            end
            b[i] = b[i] - lm*b[k]
        end

    end
    x = ones(n)
    for i=n:-1:1
        end_of_row = i + 1 +2*l > n ? n : i+1+2*l
        s = b[i]
        for k = i+1:end_of_row
            s = s - A[i,k]*x[k]
        end
        x[i] = s/A[i,i]
    end
    return A, x, 0
end

#Function calculates vector b
# A - matrix A
# l - size of block matrices
# n - size of main matrix

function multiply(A::SparseMatrixCSC{Float64, Int64},n::Int64, l::Int64)
    first =0
    start_of_row = 1
    end_of_row = l+1
    s = 0.0
    b =Vector{Float64}(n)
    for i=1:n
        for k=start_of_row:end_of_row
            s = s + A[i,k]
        end
        if ((i%l)==0 && first ==1 )
            start_of_row = start_of_row +l
        elseif (i==l && first ==0 )
            start_of_row = l-1
            first =1
        end
        end_of_row = end_of_row +1
        if (end_of_row>n)
            end_of_row = n
        end
        b[i] = s
        s=0
    end
    return b
end

#Function calculates computation error
# x - vector x

function comp_Error(x :: Vector{Float64})
    vector = ones(size(x))
    return norm(x - vector) / norm(vector)
end

#Function saving vector x without error to file
# fileName - name of file
# x - vector x
# n - size of vector

function saveVectorX(fileName::String, x::Vector{Float64}, n::Int64)
    open(fileName, "w") do f
          for i = 1:n
              write(f, "$(x[i])\n")
          end
    end
end

#Function saving vector x with error to file
# fileName - name of file
# x - vector x
# n - size of vector
# errorSize - computation error

function saveVectorX(fileName::String, x::Vector{Float64}, errorSize::Float64, n::Int64)
    open(fileName, "w") do f
        write(f,"$errorSize\n")
          for i = 1:n
              write(f, "$(x[i])\n")
          end
    end
end
end
