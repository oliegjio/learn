import sympy as sp

x, y = symbols('x y')

integrate(cos(x), x) # Integrate 'cos(x)' by 'x'.

# Definite integral. By 'x', from 0 to infinity:
integrate(exp(-x), (x, 0, oo))

# To integrate multiple times:
integrate(exp(-x**2 - y**2), (x, -oo, oo), (y, -oo, oo))
# Same as:
# first = integrate(exp(-x**2 - y**2), (x, -oo, oo))
# integrate(first, (y, -oo, oo))

# If 'integrate' is unable to compute an integral, it returns an unevalueted 'Integral' object.
# For example:
integrate(x**x, x)

# To create an unevalueted integral:
integ = Integral(log(x)**2, x)
integ.doit() # Evaluate.
