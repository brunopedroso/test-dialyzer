# Dialyzer 'successful typing' example


In [this module](lib/test.ex), we'd expect it to complain that `hello/1` type signature is broader than `function1/1`, but it first complains that, given `function1` spec, `param` can't be nil, so `function2(nil)` can never be reached.


```
> mix dialyzer
Compiling 1 file (.ex)
Finding suitable PLTs
Checking PLT...
[:compiler, :crypto, :dialyxir, :dialyzer, :elixir, :erlex, :erts, :kernel, :logger, :mix, :stdlib, :syntax_tools, :test]
PLT is up to date!
No :ignore_warnings opt specified in mix.exs and default does not exist.

Starting Dialyzer
[
  check_plt: false,
  init_plt: ~c"test/_build/dev/dialyxir_erlang-27.0.1_elixir-1.17.2_deps-dev.plt",
  files: [~c"test/_build/dev/lib/test/ebin/Elixir.Test.beam"],
  warnings: [:unknown]
]
Total errors: 1, Skipped: 0, Unnecessary Skips: 0
done in 0m2.49s
lib/test.ex:16:pattern_match
The pattern can never match the type.

Pattern:
nil

Type:
binary()

________________________________________________________________________________

```