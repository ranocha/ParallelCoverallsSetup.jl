module ParallelCoverallsSetup

export foo, i_will_throw

function foo()
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

function i_will_throw()
  x = rand(10)
  mat = rand(10, 10)
  y = mat * x
  @assert y === x
  return y
end

end # module
