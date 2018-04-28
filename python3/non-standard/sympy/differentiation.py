import sympy as sp

x, y, z = symbols('x y z') # Define symbols (like math variables).
x = Symbol('x') # Another way to define a symbol.

diff(cos(x), x) # Differentiate function 'cos(x)' by 'x'.
diff(exp(x**2), x) # 'exp' - exponential function.

expression = x ** 2 + 1

y_diff = diff(y, expression) # Differentiate 'y' by 'x'.

diff(exp(x * y * z), x, y, y, z, z, z, z) # Differentiate multiple times by different variables.
# OR (this is the same as):
diff(exp(x * y * z), x, y, 2, z, 4)

# You can also call 'diff' like this:
expression.diff(x)

expression = exp(x * y) + log(z, 10)

# Create an unevalueted derivative:
deriv = Derivative(expression, x, y, y, z, 4)
deriv.doit() # Evaluate unevalueted expression.



