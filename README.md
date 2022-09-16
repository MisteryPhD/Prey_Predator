# Prey_Predator
Population dynamics for rabbits and foxes: a classical problem described in terms of prey and predator using Lotka-Volterra model variations.

## (a) A simple Lotka-Volterra Model

Lotka-Volterra model for predator-prey relationships could be described as following diff equation system:


$$dN_{prey}/dt = R_{prey,o}N_{prey}(t) - γN_{prey}(t)N_{pred}(t)$$

$$dN_{pred}/dt = eγN_{prey}N_{pred}(t) - R_{pred.,o}(t)N_{pred}(t)$$

The next parameters are considered:

```
$R_{o,prey}=0.04$
```
