# Prey_Predator
Population dynamics for rabbits and foxes: a classical problem described in terms of prey and predator using Lotka-Volterra model variations.

## (a) A simple Lotka-Volterra Model

Lotka-Volterra model for predator-prey relationships could be described as following diff equation system:


$$dN_{prey}/dt = R_{prey,o}N_{prey}(t) - γN_{prey}(t)N_{pred}(t)$$

$$dN_{pred}/dt = eγN_{prey}N_{pred}(t) - R_{pred.,o}(t)N_{pred}(t)$$

The next parameters are considered:

$$R_{o,prey}=0.04$$

$$R_{o,pred}=0.2$$

$$γ = 0.0005$$

$$e = 0.1$$

Time units are assumed to be all in days, and that the populations are numbers of individuals per square kilometer. Conssidered the following questions. What is the doubling time of rabbits without predation, and the death rate of foxes? Explain whether or not these values are biologically reasonable. Explain the meaning of the terms γ and e and consider their values — do these make sense (consider what conditions will lead to a balance of growth/death in each population)? 

System simulated using the Forward Euler:

$x(t+Δt)=x(t)+dx/dt(Δt)$  and  $y(t+Δt)=y(t)+dy/dt(Δt)$

  Using initial populations of 200 rabbits and 50 foxes per $km^2$, and a time step of 0.01 days, evoluation of the rabbit and fox populations predicted. Two populations versus time on the same graph, as well as versus each other (on another graph) are plotted. In the latter plot the quiver function used to add velocity arrows to the plot. The observed behavior of the populations discussed.
  Calculations repeated for different initial populations: 5000 rabbits and 100 foxes per $km^2$, 4000 rabits and 80 foxes per $km^2$.

## (b) Extending the Lotka-Volterra Model

There are limitations of the Lotka–Volterra model. Here two different models considered, both using the Lotka–Volterra
model (with the original set of parameters) as a starting point:

1. A model with unrestricted prey growth is replaced by a logistic equation-based model.
$$A(U) = α(1-U/K)$$

2.  A model with restricted prey growth, as in (1), and with a predator response that saturates at high prey density, using the Holling’s disk equation. That is, replacing $α$ as above, and replacing $γ$ with:
$$Γ(U) = sU/(1+shU)$$

 Parameters are taken: $K = 10, 000$, $s = γ$ and $h = 0.2$. 
  For each case, a plot of the populations versus time and the populations versus each other (again adding velocity arrows) is made. Trajectories on the phase plane discussed.

