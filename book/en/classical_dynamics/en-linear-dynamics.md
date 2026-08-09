# Linear Dynamics

In [Linear Kinematics](./en-linear-kinematics.md), we talked about that there is no sense of "different objects" in the it, and we do not actually need to introduce any higher order derivatives of acceleration within the paradigm of Newtonian Mechanics. Here, we will address these two issues.

Before going to Newton's Law of motion, we have to introduce a physical quantity without a full explanation.

## Momentum

> Momentum is the product of mass and velocity

$$
\boxed{\vec{p}(t) = m \vec{v}}
$$

## Newton's Laws Of Motion

To talk about linear dynamics in Newtonian Mechanics, we are just talk about **Force** and his famous three laws of motion.

To be aware, there is a universal assumption for all three laws to work: 

We must in an **inertial frame of reference**. (More on this later)

### Newton's 1st Law

> If no external force is exerted on a point mass, then the mass will remain at rest, or move with a constant speed along a straight line.

This statement can be easily expressed in modern terms: if $\vec{F}(t) = \vec{0}$, then $\vec{v}(t) = \vec{v}$ which is a constant.

However, there are several things to unpack later, just keep those questions in your mind for a while:

1. What is an external force?
2. What is a point?
3. What is mass?
4. Isn't it just a special form of Newton's 2nd Law?

### Newton's 2nd Law

> Force is the rate of change of momentum

$$
\boxed{\vec{F}(t) = \frac{d \vec{p}}{dt}}
$$

If we plug in the definition of momentum:

$$
\vec F(t) = \frac{d (m \vec v)}{dt}
$$

If $m = m(t)$ and $\vec{v} = \vec{v}(t)$, then we have to apply product rule

$$
\begin{align} \vec{F}(t) &= m \frac{d \vec{v}}{dt} + \frac{dm}{dt} \vec{v} \\
 &= m \vec{a} + \frac{dm}{dt} \vec{v}\end{align}
$$

If $\frac{dm}{dt} = 0$, which means mass is a constant, then we obtain the most famous form of Newton's 2nd law:

$$
\boxed{\vec{F} = m \vec{a}}
$$

Does the assumption of a constant mass hold? 

If you think about it, it is easily to point out when it fails:

- A rocket burns most of its fuel while launching
- Liquid may leak from pipe while flowing

However, those are not a problem if we, as Newton considered, focus on **point mass**. 

Hence, the answer to Q2 in previous session is that a **point** is geometrically 0D which means it does not have size. If a point does not have size, then it is logically inseparable. It is ideal, not real. 

As for Q4, it is clear that the Newton's 1st law is indeed a special case of Newton's 2nd law, as $\vec{F} = \vec{0}$, we have $\vec{a} = \vec{0}$, which implies a constant velocity.

Then why do we even need Newton's 1st law at all? The answer I think is more about history than the generality of idea. 

In ancient Greek, Aristotle proposed the idea that force is the cause of the motion.
