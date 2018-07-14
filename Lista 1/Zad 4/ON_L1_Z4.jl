#Exercise 4
#Author: Łukasz Klekowski


function floats()
  #First float: 1.0
  x = Float64(1.0)
  # Iterative adding epsilon to float
  while x <= Float64(2.0)
    x = x + eps(Float64)
    score = Float64(x * (Float64(1.0)/x))
    # Verifying compliance with the expected result
    if score != Float64(1.0)
      println("x = ", x )
      bits(x)
    end
  end
end

floats()
