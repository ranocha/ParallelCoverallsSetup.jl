using ParallelCoverallsSetup
using Test

@testset "ParallelCoverallsSetup.jl" begin
    @test_nowarn foo()
    @test_throws AssertionError i_will_throw()
end
