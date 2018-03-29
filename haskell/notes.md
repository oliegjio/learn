### Compilation:

- To compile Haskell code, run: `ghc -o executable.out one.hs two.hs three.hs`.
- To simply run Haskell program, execute: `runhaskell <program_name.hs>`.

### GHCI:

- `:quit` - Exit from GHCI.
- `:load <file_path>` - Load file in GHCI.
- `:t <variable>` - Examin a type of variable.
- `:m + <Module> <Module> ...` - add modules to GHCI session.

### Other:

- List of all standard modules: https://downloads.haskell.org/~ghc/latest/docs/html/libraries/.
- Search Haskell functions: https://www.haskell.org/hoogle/.

### Debian Haskell Installation:
1. `sudo apt-get install haskell-platform`.
2. `cabal update`.