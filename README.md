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

Assumed that the time units are all in days, and that the populations are numbers of individuals per square kilometer. Conssidered following questions. What is the doubling time of rabbits without predation, and the death rate of foxes? Explain whether or not these values are biologically reasonable. Explain the meaning of the terms γ and e and consider their values — do these make sense (consider what conditions will lead to a balance of growth/death in each population)? 

System simulated using the Forward Euler:

$x(t+Δt)=x(t)+dx/dt(Δt)$  and  $y(t+Δt)=y(t)+dy/dt(Δt)$

Using initial populations of 200 rabbits and 50 foxes per $km^2$, and a time step of 0.01 days, determine how the rabbit and fox populations will vary over one year. Plot the two populations versus time on the same graph, as well as versus each other (on another graph). In the latter plot use the quiver function to add velocity arrows to the plot (use a lighter color such as gray for this). Discuss the observed behavior of the populations. What is the range in each population? 
Repeat your calculations with initial populations of 5000 rabbits and 100 foxes per km2, and discuss how the behavior of the system changes. Do the same for 4000 rabits and 80 foxes per km2. What does this result tell you about the system?
