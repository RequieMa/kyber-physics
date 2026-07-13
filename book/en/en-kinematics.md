# Kinematics

# Time and Position
There are two physical quantities that cannot actually be defined in physics: Time and Position. 

**Time**, $t$, is the most ill-defined physical quantity. We all assumed that we know what it is when we talk about time. However, we can only imagine the 'tick-tock' of a mechanical clock, not a conceptual definition of it. 

Some philosophers argued that our imagination of time comes from our understanding of 3D world where the perception of "distance" is vivid. 

Some go the other way around, like Kant. They think that our interests of "quantify distance" into some kinds of scale was originated from time as time is ticking all the time. The sensation of time is from the awareness of death which is the ultimate end for beings. 

Nevertheless, in Physics, we only talk about **the measurement of time**, the different rate of time in different perspective or reference (in Relativity). Sometimes maybe the origin of time. **Not time itself**. 

We end our discussion of time with a quotation from Saint Augustine:

```
I know what it is, but when you ask me I don’t.
```

The other one is position. Unlike time, in Physics, we use the idea of position all the time, and we do define it mathematically. However, the discussion of position implicitly depends on the "origin" we set. You can point out a location in space. However, to write down the actual mathematical description of this point, i.e. a specific coordinate, you need to define a **Coordinate System**, like a Cartesian coordinate, beforehand. 

Therefore, in Physics, we are more keen to use **displacement** instead, which is **the relative position**. It can be relative to an origin or another object. Physical phenomena will not be affected by it, only the equations or numbers will.

The proper treatment of Position will be delayed in the discussion of rigid body motion.

# Linear Displacement
Given an origin, $O$, and some basis vectors (for Physics, normally in 3D) such that any position of objects, $A$ and $B$ can be written as 

$$
\begin{align*}
    \vec{O} ~ &= ~ \begin{pmatrix}0 \\ 0 \\ 0\end{pmatrix}\\
    \vec {OA} ~ &= ~ \begin{pmatrix}a_i \\ a_j \\ a_k\end{pmatrix}\\
    \vec {OB} ~ &= ~ \begin{pmatrix}b_i \\ b_j \\ b_k\end{pmatrix}\\
\end{align*}
$$

The relative position or **Linear Displacement** in Physics is hence defined as

$$
\vec {AB} = \vec {OB} - \vec {OA} = \begin{pmatrix}b_i - a_i \\ b_j - a_j \\ b_k - a_k\end{pmatrix}
$$

normally written as $\vec{r}$ and is a function of time $\vec{r} = \vec{r}(t)$.

It is relative because it contains no information about the initial and final positions separately.

For convenience, the two forms of vector notation are interchangeable in Physics

$$
\vec{r} = \begin{pmatrix}x \\ y \\ z\end{pmatrix} = x \hat{i} + y \hat{j} + z \hat{k}
$$

The only difference is that the second one explicitly writes down the basis vector so that you know what kind of coordinate system we are using, the first one does not so it can be on other types of coordinate systems like a spherical polar coordinates. 

Without explicitly specifying, we assume the first one is using a Cartesian coordinate.

# Linear Velocity
**Linear Velocity** of a particle is **the rate of change of linear displacement**

$$
\vec{v} ~=~ \frac{d \vec{r}}{dt}
$$

# Linear Acceleration

**Linear Acceleration** of a particle is **the rate of change of linear velocity**

$$
\vec{a} ~=~ \frac{d \vec{v}}{dt} = \frac{d^2 \vec{r}}{dt^2}
$$

# Formal Solution of Kinematical Equations
Once we have the definitions, we can use them to find equations to obtain objects' state of motions (i.e. displacement and velocity). The relations between the accelerations, velocities and displacements are called the **Equations of Motion**. 

$$
\vec{a}(t) = \frac{d \vec{v}}{dt}\\
\Rightarrow d \vec{v}  = \vec{a}(t) dt\\
\Rightarrow \int_{\vec{v}_0}^{\vec{v}(t)} d \vec{v}  = \int_{t_0}^{t} \vec{a}(t) dt\\
\Rightarrow \vec{v}(t) - \vec{v}_0  = \int_{t_0}^{t} \vec{a}(t) dt\\
\Rightarrow \vec{v}(t) = \vec{v}_0 + \int_{t_0}^{t} \vec{a}(t) dt
$$

Similarly,

$$
\vec{v}(t) = \frac{d \vec{s}}{dt}\\
\Rightarrow d \vec{s}  = \vec{v}(t) dt\\
\Rightarrow \int_{\vec{s}_0}^{\vec{s}(t)} d \vec{s}  = \int_{t_0}^{t} \vec{v}(t) dt\\
\Rightarrow \vec{s}(t) - \vec{s}_0  = \int_{t_0}^{t} \vec{v}(t) dt\\
\Rightarrow \vec{s}(t) = \vec{s}_0 + \int_{t_0}^{t} \vec{v}(t) dt
$$

# Velocity and Acceleration on 2D Coordinate Systems
If we are in 2D, there are two natural option of coordinate systems: 
1. a Cartesian coordinate, $(x, y)$
2. a Polar coordinate, $(r, \theta)$, where $\theta$ is positive in anticlockwise direction $\theta \in (0, 2\pi)$

## In Cartesian Coordinate

$$
\begin{align*}
    \vec{r} ~ &= ~ x \hat{i} + y \hat{j}\\
    \Rightarrow \vec{v} ~ &= ~ \frac{d \vec{r}}{dt}\\
    \, ~ &= ~ \frac{d}{dt}\left(x \hat{i} \right) + \frac{d}{dt}\left(y \hat{j} \right)\\
\end{align*}
$$

Using product rule, we have

$$
\Rightarrow \vec{v} ~=~ \frac{d x}{dt}\hat{i} + x \frac{d \hat{i}}{dt} + \frac{d y}{dt}\hat{j} + y \frac{d \hat{j}}{dt}\\
$$

Based on the geometry, we know that the direction of $\hat{i}$ and $\hat{j}$ does not change over time, hence the rate of change is zero.

$$
\Rightarrow \vec{v} ~=~ \frac{d x}{dt}\hat{i} + \frac{d y}{dt}\hat{j}\\
$$

Similarly, 

$$
\begin{align*}
    \vec{v} ~ &= ~ \frac{d x}{dt}\hat{i} + \frac{d y}{dt}\hat{j}\\
    \Rightarrow \vec{a} ~ &= ~ \frac{d \vec{v}}{dt}\\
    \, ~ &= ~ \frac{d^2 x}{dt^2}\hat{i} + \frac{d^2 y}{dt^2}\hat{j}\\
\end{align*}
$$

## In Polar Coordinate
Taking velocity and acceleration in Cartesian coordinate is trivial. However, in Polar coordinate, we have to be careful of the changing direction.

$$
\vec{r} = r \hat{e}_r
$$

Here, $\hat{e}_r$ is the radial direction and it is a function of angle, i.e. $\hat{e}_r = \hat{e}_r(\theta)$.

Then, 
$$
\begin{align*}
    \Rightarrow \vec{v} ~ &= ~ \frac{d \vec{r}}{dt}\\
    \, ~ &= ~ \frac{d}{dt}\left(r \hat{e}_r \right)\\
    \, ~ &= ~  \frac{dr}{dt} \hat{e}_r + r \frac{d \hat{e}_r(\theta)}{dt}\\
\end{align*}
$$

For the second term, we need to apply chain rule

$$
\Rightarrow \vec{v} ~=~ \frac{dr}{dt} \hat{e}_r + r \frac{d \hat{e}_r(\theta)}{d \theta} \frac{d \theta}{dt}
$$

To get an idea of what $\frac{d \hat{e}_r(\theta)}{d \theta}$ is, we can first consider the relation between Polar and Cartesian Coordinate. 

$$
\hat{e}_r(\theta) = \cos(\theta) \hat{i} + \sin(\theta) \hat{j}
$$

Obviously, $\hat{i}$ and $\hat{j}$ are not dependent on $\theta$, thus,

$$
\begin{align*}
    \Rightarrow \frac{d \hat{e}_r(\theta)}{d \theta} ~ &= ~ \frac{d}{d \theta}\left(\cos(\theta) \right)\hat{i} + \frac{d}{d \theta}\left(\sin(\theta) \right)\hat{j}\\
    \, ~ &= ~ -\sin(\theta)\hat{i} + \cos(\theta)\hat{j}\\
    \, ~ &= ~ \hat{e}_\theta\\
\end{align*}
$$

It is clear that it satisfies the orthogonality of basis vector such that $\hat{e}_r \cdot \hat{e}_\theta = 0$

Therefore,

$$
\vec{v} ~=~ \frac{dr}{dt} \hat{e}_r + r \omega \hat{e}_\theta
$$

where $\omega = \frac{d \theta}{dt}$ is the **Angular Velocity**, which is **the rate of change of Angular Displacement** (the angle). (More in this, especially the vector form of it, will be shown later)

Similarly, 

$$
\begin{align*}
    \vec{a} ~ &= ~ \frac{d \vec{v}}{dt}\\
    \Rightarrow ~ &= ~ \frac{d}{dt}\left(\frac{dr}{dt} \hat{e}_r\right) + \frac{d}{dt}\left(r \omega \hat{e}_\theta\right)\\
    \, ~ &= ~ \frac{d^2 r}{dt^2} \hat{e}_r + \frac{dr}{dt} \frac{d \hat{e}_r(\theta)}{dt}  + \frac{dr}{dt} \omega \hat{e}_\theta + r \frac{d\omega}{dt} \hat{e}_\theta + r \omega \frac{d \hat{e}_\theta}{dt}\\
    \, ~ &= ~ \frac{d^2 r}{dt^2} \hat{e}_r + 2 \frac{dr}{dt} \omega \hat{e}_\theta + r \frac{d\omega}{dt} \hat{e}_\theta + r \omega^2 \frac{d \hat{e}_\theta}{d\theta}\\
\end{align*}
$$

To solve the last term, we can use the aid of Cartesian Coordinate again

$$
\begin{align*}
    \Rightarrow \frac{d \hat{e}_\theta}{d\theta} ~ &= ~ -\frac{d}{d \theta}\left(\sin(\theta) \right)\hat{i} + \frac{d}{d \theta}\left(\cos(\theta) \right)\hat{j}\\
    \, ~ &= ~ -\cos(\theta)\hat{i} - \sin(\theta)\hat{j}\\
    \, ~ &= ~ -\hat{e}_r\\
\end{align*}
$$

Therefore,

$$
\Rightarrow \vec{a} ~=~ \left(\frac{d^2 r}{dt^2} - r \omega^2 \right) \hat{e}_r + \left(r \alpha + 2 \frac{dr}{dt} \omega \right) \hat{e}_\theta \\
$$

where $\alpha = \frac{d\omega}{dt}$ is the **Angular Acceleration**, which is **the rate of change of angular velocity**.
