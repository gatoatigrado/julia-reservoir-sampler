julia-reservoir-sampler
=======================

my Julia learning project. When you're dealing with large text files, the usual trick of `shuf | head -n SAMPLE_SIZE` doesn't work (it runs out of memory). This works, even if it's not the fastest thing.

Requirements: Julia (you should be able to run `julia` from the command line)

Installation (to ~/bin): `ln -s $(readlink -f reservoir_sampler.jl) ~/bin/`

Usage: `cat my-large-text-file | random_sampler.jl 1000 > 1k_sample_of_my-large-text-file`
