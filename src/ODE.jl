# Ordinary Differential Equation Solvers

module ODE

using Polynomials
using Compat
using Iterators

## minimal function export list
# adaptive non-stiff:
export ode23, ode45, ode78
# non-adaptive non-stiff:
export ode4, ode4ms
# adaptive stiff:
export ode23s
# non-adaptive stiff:
export ode4s, ode4s_s

import Base.convert, Base.show
import Base: start, next, done, call, collect

## complete function export list: see runtests.jl

# basic type definitions
include("types.jl")
include("helpers.jl")

# dense output wrapper
include("dense.jl")

# particular solvers
include("ode23s.jl")
include("runge-kutta.jl")
# include("multistep.jl")
include("adams-bashford-moulton.jl")
include("rosenbrock.jl")
# include("taylor.jl")

include("iterators.jl")
include("interfaces.jl")

end # module ODE
