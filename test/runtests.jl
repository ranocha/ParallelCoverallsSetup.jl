using ParallelCoverallsSetup
using Test

@testset "ParallelCoverallsSetup.jl" begin
    @test_nowarn i_am_fully_tested()
    @test_nowarn i_am_partially_tested()
    @test_throws AssertionError i_will_throw()
end
