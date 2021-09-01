module ParallelCoverallsSetup

export i_am_partially_tested, i_am_fully_tested, i_am_not_tested, i_will_throw

function i_am_partially_tested()
  local val::Int

  if Sys.islinux()
    val = 1
  elseif Sys.isapple()
    val = 2
  elseif Sys.iswindows()
    val = 3
  else
    val = 4
  end

  return val
end

function i_am_fully_tested()
  val = rand()
  return val
end


function i_am_not_tested(x)
  if x == 1
    return "x is one"
  end
  
  return "x is not one"
end


function i_will_throw()
  x = rand(10)
  mat = rand(10, 10)
  y = mat * x
  @assert y === x
  return y
end

end # module
