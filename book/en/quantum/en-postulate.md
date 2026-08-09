# The Postulates Of Quantum Mechanics

Quantum Mechanics (QM)

1. Everything that can be known about a quantum mechanical **system** is completely determined by a **state function** associated with that system
2. The state function of a system evolves in time according to the **Time-Dependent Schrödinger Equation (TDSE)**
3. Each **physical observable** has a corresponding **operator** in QM which allows the results of a **measurement** of that observable to be deduced
4. When a measurement is made of an observable associated with operator $\hat{Q}$, the only possible outcome is an **eigenvalue** $q_i$ of $\hat{Q}$ leaving the system's state function equal to the corresponding **eigenfunction** $f_i$ of $\hat{Q}$

# Some Recap

## What is the **Correspondence Principle**?

In the classical limit, QM prediction showed agree with classical predictions.

Q1: What is the "classical limit"?

e.g.

- quantum numbers became large such as principal quantum number, $n$, in the Bohr Model
- quantization becomes small ($\hbar \rightarrow 0$)

Also, classical dynamical variables should have corresponding QM operators

Q2: What is a **stationary state**?

States for which the corresponding probability density and observable does not change with time (even though the wave function may change phase)

If 

$$\psi(\vec{r}, t) = u(\vec{r}) e^{-i \frac{E}{\hbar}t}$$

then the probability density $p$ is constant in time,

$$
p = |\psi(\vec{r}, t) |^2 = |u(\vec{r})|^2
$$

Stationary states have well-defined energy $E$. Then $\Delta E = 0$ so that $\Delta t \rightarrow \infty$ since $\Delta E \Delta t \ge \hbar$

Q3: What is a **wave packet**?

We can superpose waves of different wavevectors to make a wave packet localized in space.

The smaller $\Delta k$ the closer the wave is to a "pure" sine or cosine and so the less localized is the wave packet.

For large $\Delta k$ the wave packet size $\Delta x$ is small.

Gaussian wave packets are easy to build: a Gaussian distribution of wavevectors gives us a Gaussian wave packet

Write in discrete form as

$$
\psi = \sum_k a_k e^{i k x = i \omega(k) t}
$$

or in continuous form as

$$
\psi = \int_k a(k) e^{ikx - i \omega(k)t} dk
$$

where $a(k)$ is Gaussian

$$
a(k) = a_0 \exp \left({- \frac{(k - k_0)^2}{2 \sigma^2}} \right)
$$

and $|\psi|^2$ is also Gaussian.

Here, $\Delta k \Delta x = 1 = \sigma \times \frac{1}{\sigma}$


