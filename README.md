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

Assume that the time units are all in days, and that the populations are numbers of individuals per square kilometer. Conssider, what is the doubling time of rabbits without predation, and the death rate of foxes? Explain whether or not these values are biologically reasonable. Explain the meaning of the terms γ and e and consider their values — do these make sense (consider what conditions will lead to a balance of growth/death in each population)? 
System simulated using the Forward Euler:

$x(t+Δt)=x(t)+dx/dt(Δt)$ and  $y(t+Δt)=y(t)+dy/dt(Δt)$
