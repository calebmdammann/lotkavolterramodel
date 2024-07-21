function extinction()

    function condition(out, u, t, integrator)

        out[1] = u[1]
        out[2] = u[2]

    end

    function affect!(integrator, idx)

        if idx == 1

            terminate!(integrator)

        elseif idx == 2

            terminate!(integrator)

        end

    end

    cb = VectorContinuousCallback(condition,affect!,2)

    return cb

end