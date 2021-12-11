module MyCalculus

export EulerMethod


"""
    EulerMethod(f, x₀, y₀, step= 0.5, n=100.0)

Function to approximate solution to an ordinary differential equation using the Euler's Method.
dy/dx = f(x, y) where y(x₀) = y₀ and x₀ = x₀.

# Arguments
    f: function to approximate solution to, of the form f(x, y). 
        This is the right hand side of the differential equation.
    x₀: initial x value condition
    y₀: initial y value condition
    step: step size for the Euler's Method
    n: number of steps to take

# Returns
    x: array of x values
    y: array of y values

"""
function EulerMethod(f::Function, x₀::Real, y₀::Real, step::Real=0.5, n::Real=100.0)

    y =[y₀] #initialize y array with intiial condition
    x = [x for x in range(x₀, step=step, length=n)] # array of x values starting with initial condition
    m = [] # this array will hold slope (right hand side of differential equation)
    
    push!(m, f(x[1], y[1])) # push initial slope onto array

    for k in 2:length(x) # iterate through x values starting at 2nd element

        push!(y, y[k-1] + m[k-1]*0.5) # push new y value to array using Euler's Method
        push!(m, f(x[k], y[k])) # push slope to array
    end
    
    return x, y

end






end
