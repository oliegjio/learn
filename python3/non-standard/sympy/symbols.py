import sympy as sp

x = Symbol('x') # Define symbol (like math variables).
x, y, z = symbols('x y z') # Define multiple symbols.

# Converts an expression to a type that can be used inside SymPy.
sympy_number = sympify(3213)
# It can accept:
# - Standard numeric Python types.
# - Lists, sets, tuples.
# - Strings, like: "0.009", "2e-19".
# - Any SymPy object.

s = '-2*(-(-x + 1/x)/(x*(x - 1/x)**2) - 1/(x*(x - 1/x))) - 1'

# 'sympify' performs autosimplification, to disable it, use:
sympify(s) # OUTPUT: -1.
kernS(s) # OUTPUT: '-2*(-(-x + 1/x)/(x*(x - 1/x)**2) - 1/(x*(x - 1/x))) - 1'.
