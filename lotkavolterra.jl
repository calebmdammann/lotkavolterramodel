function lotkavolterra(du,u,p,t)

    # State Variables

    x = u[1]
    y = u[2]

    # Model Parameters

    α = p[1]
    β = p[2]
    δ = p[3]
    γ = p[4]

    # Derivatives

    du[1] = α*x-β*x*y
    du[2] = -γ*y+δ*x*y

    nothing

end

