using DifferentialEquations, Plots
pyplot()

include("lotkavolterra.jl")
include("extinction.jl")

# Computational Parameters

t0 = 0
tf = 100
tspan = (t0,tf)

# Model Parameters

α = 1.1
β = 0.4
δ = 0.1
γ = 0.4
p = [α, β, δ, γ]

# Initial Conditions

x0 = 10
y0 = 10
u0 = [x0, y0]

# Solution to System of ODEs

prob = ODEProblem(lotkavolterra,u0,tspan,p)
sol = solve(prob,DP5(),abstol=10^-6,reltol=10^-6,callback=extinction(),saveat=range(t0,tf,1000))

# Solution Plot

plot(sol,

    title = "Solution to the Lotka-Volterra Equations",
    label = ["Prey" "Predator"],
    xlabel = "Time",
    ylabel = "Population Size",
    linecolor = [:red :blue],
    grid = false

)
