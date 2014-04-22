shell = /usr/bin/zsh


run:
	(echo foo; echo baré; echo baz) | julia reservoir_sampler.jl 2


# This should generate all 2-element subsets of {'foo', 'baré', 'baz'}. There
# should be 6 combinations -- 3 choices for the first element, and 2 choices
# for the second.
test:
	seq 1 24 | xargs -P12 -n1 zsh -c '(echo foo; echo baré; echo baz) | julia reservoir_sampler.jl 2 | md5sum' > combinations
	(($$(sort combinations | uniq | wc -l) == 6)) || echo "failed (or you got unlucky)" >&2
