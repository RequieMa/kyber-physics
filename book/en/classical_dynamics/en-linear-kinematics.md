# Linear Kinematics

## Time and Position
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

## Linear Displacement
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

## Linear Velocity
**Linear Velocity** of a particle is **the rate of change of linear displacement**

$$
\vec{v} ~=~ \frac{d \vec{r}}{dt}
$$

## Linear Acceleration

**Linear Acceleration** of a particle is **the rate of change of linear velocity**

$$
\vec{a} ~=~ \frac{d \vec{v}}{dt} = \frac{d^2 \vec{r}}{dt^2}
$$

## Formal Solution of Kinematical Equations
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

### Assumption: Constant Velocity

In the case of constant velocity, $\vec{v}(t) = \vec{v}$,

$$
\vec{s}(t) = \vec{s}_0 + \vec{v} t
$$

which is clearly a straight line in a vector form.

### Assumption: Constant Acceleration

In the case of constant acceleration, $\vec{a}(t) = \vec{a}$,

$$
\vec{v}(t) = \vec{v}_0 + \vec{a}t
$$

as for displacement,

$$
\Rightarrow \vec{s}(t) = \vec{s}_0 + \int_{t_0}^t \left(\vec{v}_0 + \vec{a}t\right) dt \\
\Rightarrow \vec{s}(t) = \vec{s}_0 + \vec{v}_0 t + \frac{1}{2}\vec{a} t^2
$$

## Connection To Dynamics

The natural question at this point is what if acceleration is varying. In that case, we have to return to the integration. 

The next natural question is what is the name of the rate of change of acceleration, namely $\frac{d \vec{a}}{dt}$.

In some domains, it is called "Jerk" or "Jolt". Mathematically, you can talk about $\frac{d^n \vec{a}}{dt^n}$ to any arbitrary order $n$. However, the key is that it is not really necessary to introduce such physical quantities in Newtonian Mechanics! We will see that in the Dynamics Chapter.

One more thing to note: for linear kinematics, there is no "object". The difference of the essence of objects is swapped away. Once I know the acceleration as a function of time, no matter we are talking about a rock, a fish, a rocket or a planet, they will all move linearly along the same trajectory. That is the power of linear kinematics. 
