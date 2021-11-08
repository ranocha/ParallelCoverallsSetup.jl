# ParallelCoverallsSetup

[![Build Status](https://github.com/ranocha/ParallelCoverallsSetup.jl/workflows/CI/badge.svg)](https://github.com/ranocha/ParallelCoverallsSetup.jl/actions?query=workflow%3ACI)
[![Coverage](https://codecov.io/gh/ranocha/ParallelCoverallsSetup.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/ranocha/ParallelCoverallsSetup.jl)
[![Coverage](https://coveralls.io/repos/github/ranocha/ParallelCoverallsSetup.jl/badge.svg?branch=main)](https://coveralls.io/github/ranocha/ParallelCoverallsSetup.jl?branch=main)

The standard parallel Coveralls setup provided by [their GitHub action](https://github.com/marketplace/actions/coveralls-github-action)
can be quite annoying since it lists each individual coverage report as GitHub actions status. In particular, this means that

- you can easily get lost in many coverage reports because they are [too noisy](https://github.com/JuliaCI/PkgBenchmark.jl/pull/125#issuecomment-843003479)
- many coverage checks will fail if you add new code that is not covered in all parallel CI jobs

See also

- https://github.com/trixi-framework/Trixi.jl/issues/691
- https://github.com/coverallsapp/github-action/issues/67
- https://github.com/coverallsapp/github-action/issues/47

This repository provides a parallel CI setup for Julia avoiding these issues with Coveralls
by merging individual coverage reports manually in the CI script. This means that the CI 
script becoems a bit longer but makes Coveralls great again.
