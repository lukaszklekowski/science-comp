#Exercises 1-3
#Author: Łukasz Klekowski

module Zad1_3
export mbisekcji, mstycznych, msiecznych

#Funtion finds root of function using bisection method
# f - anonymous function
# a, b - the beginning and end of the interval
# delta, espilon - precision of computations
# @rerurn (r, v, it, err)
#   @r - root
#   @v - value of function in compued root
#   @it - number of iterations
#   @err - error code (0 - without error, 1 - bad interval)
function mbisekcji(f, a :: Float64, b :: Float64, delta :: Float64, epsilon :: Float64)
  maxit = 100
  u = f(a)
  v = f(b)
  e = b - a

  if sign(u) == sign(v)
    return (0, 0, 0, 1)
  end

  for k in 1:maxit
    e = e / 2
    c = a + e
    w = f(c)

    if abs(e) < delta || abs(w) < epsilon
      return (c, w, k, 0)
    end
    
    if sign(w) != sign(u)
      b = c
      v = w
    else
      a = c
      u = w
    end
  end
end

#Funtion finds root of function using Newton's method
# f - anonymous function
# pf - derivative of anonumaous function
# x0 - starting point
# delta, espilon - precision of computations
# @rerurn (r, v, it, err)
#   @r - root
#   @v - value of function in compued root
#   @it - number of iterations
#   @err - error code (0 - without error, 1 - reaching iteration limit, 2 - derivative is too close zero)
function mstycznych(f, pf, x0 :: Float64, delta :: Float64, epsilon :: Float64, maxit :: Int)
  v = f(x0)
  x1=0
 if abs(v) < epsilon
  return (x0, v, 0, 0)
  end

 for k in 1:maxit
   if abs(pf(x0)) < epsilon
     return (x1,v,k,2)
   end
      x1 = x0 - (v / pf(x0))
      v  = f(x1)
      if abs(x1 - x0) < delta || abs(v) < epsilon
        return (x1, v, k, 0)
      end
      x0 = x1
  end

  return (x1, v, maxit, 1)
end

#Funtion finds root of function using Newton's method
# f - anonymous function
# x0, x1 - starting points
# delta, espilon - precision of computations
# @rerurn (r, v, it, err)
#   @r - root
#   @v - value of function in compued root
#   @it - number of iterations
#   @err - error code (0 - without error, 1 - reaching iteration limit)
function msiecznych(f, x0 :: Float64, x1 :: Float64, delta :: Float64, epsilon :: Float64, maxit :: Int )

  fa = f(x0)
  fb = f(x1)

  for k in 1:maxit
    if abs(fa) > abs(fb)
      temp = fa
      fa = fb
      fb = temp

      temp = x0
      x0 = x1
      x1 = temp
    end

    s = (x1 - x0) / (fb - fa)
    x1 = x0
    fb = fa
    x0 = x0 - (fa * s)
    fa = f(x0)

    if abs(x1 - x0) < delta || abs(fa) < epsilon
      return (x0, fa, k, 0)
    end
  end
    return (x0, fa, maxit, 1)
end
end
