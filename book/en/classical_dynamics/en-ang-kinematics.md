# Angular Kinematics

## Velocity and Acceleration on 2D Coordinate Systems
To talk about Angular Kinematics, we cannot stay at 1D situation since rotation is **fundamentally on a plan**. (This idea is crucial since many people believe rotation is fundamentally 3D, not it is not!)

If we are in 2D, there are two natural option of coordinate systems: 
1. a Cartesian coordinate, $(x, y)$
2. a Polar coordinate, $(r, \theta)$, where $\theta$ is positive in anticlockwise direction $\theta \in (0, 2\pi)$

### In Cartesian Coordinate

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
