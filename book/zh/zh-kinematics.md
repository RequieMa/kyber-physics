---
title: 运动学
date: 2026-07-13
authors:
  - name:
      literal: RequieMa
---

# 运动学

# 时间与位置

在物理学中，有两个物理量实际上无法被真正定义：时间 (Time) 和位置 (Position)。

**时间**，$t$，是最难以定义的物理量。当我们谈论时间时，我们都默认自己知道它是什么。然而，我们只能想象机械钟的"滴答"声，却无法给出一个概念性的定义。

有些哲学家认为，我们对时间的想象源于对三维世界的理解 -- 在三维世界中，"距离感"是直观的。

另一些人则持相反观点，比如康德。他们认为，我们之所以产生"将距离量化"为某种尺度的兴趣，恰恰源于时间 -- 因为时间始终在流逝。对时间的感知，来自对死亡的意识，而死是所有存在的终点。

无论如何，在物理学中，我们只讨论**时间的测量**、不同视角或参考系中时间流逝速率的差异（相对论），有时也讨论时间的起源。**而非时间本身**。

我们用圣奥古斯丁的一句话来结束关于时间的讨论：

```
我知道它是什么，但当你问我时，我却不知道了。
```

另一个是位置。与时间不同，在物理学中，我们一直在使用位置的概念，也确实在数学上定义了它。然而，关于位置的讨论隐性地依赖于我们预先设定的"原点"。你可以指出空间中的一个位置，但要写下这个点的实际数学描述 -- 即一个具体的坐标 -- 你需要先定义一个**坐标系**，比如笛卡尔坐标系。

因此，在物理学中，我们更倾向于使用**位移** (Displacement)，即**相对位置**。它可以相对于一个原点，也可以相对于另一个物体。物理现象不会因此受到影响，只有方程或数字会改变。

关于位置的严格处理，将留到刚体运动的讨论中进行。

# 线位移

给定一个原点 $O$ 和一些基向量（在物理学中，通常为三维），使得任意物体 $A$ 和 $B$ 的位置可以写为：

$$
\begin{align*}
    \vec{O} ~ &= ~ \begin{pmatrix}0 \\ 0 \\ 0\end{pmatrix}\\
    \vec {OA} ~ &= ~ \begin{pmatrix}a_i \\ a_j \\ a_k\end{pmatrix}\\
    \vec {OB} ~ &= ~ \begin{pmatrix}b_i \\ b_j \\ b_k\end{pmatrix}\\
\end{align*}
$$

物理学中的相对位置，即**线位移**，因此定义为：

$$
\vec {AB} = \vec {OB} - \vec {OA} = \begin{pmatrix}b_i - a_i \\ b_j - a_j \\ b_k - a_k\end{pmatrix}
$$

通常记作 $\vec{r}$，且是时间的函数 $\vec{r} = \vec{r}(t)$。

它是相对的，因为它不包含起点和终点各自的独立信息。

为方便起见，向量的两种记法在物理学中可以互换使用：

$$
\vec{r} = \begin{pmatrix}x \\ y \\ z\end{pmatrix} = x \hat{i} + y \hat{j} + z \hat{k}
$$

唯一的区别是，第二种记法显式地写出了基向量，因此你知道我们使用的是哪种坐标系；第一种则不写出，所以也可以用于其他类型的坐标系，比如球极坐标。

除非明确指定，否则我们默认第一种记法使用的是笛卡尔坐标系。

# 线速度

质点的**线速度**是**线位移的变化率**：

$$
\vec{v} ~=~ \frac{d \vec{r}}{dt}
$$

# 线加速度

质点的**线加速度**是**线速度的变化率**：

$$
\vec{a} ~=~ \frac{d \vec{v}}{dt} = \frac{d^2 \vec{r}}{dt^2}
$$

# 运动方程的形式解

有了定义之后，我们可以用它们来找到描述物体运动状态（即位移和速度）的方程。加速度、速度和位移之间的关系称为**运动方程**。

$$
\vec{a}(t) = \frac{d \vec{v}}{dt}\\
\Rightarrow d \vec{v}  = \vec{a}(t) dt\\
\Rightarrow \int_{\vec{v}_0}^{\vec{v}(t)} d \vec{v}  = \int_{t_0}^{t} \vec{a}(t) dt\\
\Rightarrow \vec{v}(t) - \vec{v}_0  = \int_{t_0}^{t} \vec{a}(t) dt\\
\Rightarrow \vec{v}(t) = \vec{v}_0 + \int_{t_0}^{t} \vec{a}(t) dt
$$

类似地，

$$
\vec{v}(t) = \frac{d \vec{s}}{dt}\\
\Rightarrow d \vec{s}  = \vec{v}(t) dt\\
\Rightarrow \int_{\vec{s}_0}^{\vec{s}(t)} d \vec{s}  = \int_{t_0}^{t} \vec{v}(t) dt\\
\Rightarrow \vec{s}(t) - \vec{s}_0  = \int_{t_0}^{t} \vec{v}(t) dt\\
\Rightarrow \vec{s}(t) = \vec{s}_0 + \int_{t_0}^{t} \vec{v}(t) dt
$$

# 二维坐标系中的速度与加速度

在二维情况下，有两种自然的坐标系选择：
1. 笛卡尔坐标系，$(x, y)$
2. 极坐标系，$(r, \theta)$，其中 $\theta$ 以逆时针方向为正，$\theta \in (0, 2\pi)$

## 笛卡尔坐标系中

$$
\begin{align*}
    \vec{r} ~ &= ~ x \hat{i} + y \hat{j}\\
    \Rightarrow \vec{v} ~ &= ~ \frac{d \vec{r}}{dt}\\
    \, ~ &= ~ \frac{d}{dt}\left(x \hat{i} \right) + \frac{d}{dt}\left(y \hat{j} \right)\\
\end{align*}
$$

使用乘积法则，有：

$$
\Rightarrow \vec{v} ~=~ \frac{d x}{dt}\hat{i} + x \frac{d \hat{i}}{dt} + \frac{d y}{dt}\hat{j} + y \frac{d \hat{j}}{dt}\\
$$

由几何关系可知，$\hat{i}$ 和 $\hat{j}$ 的方向不随时间改变，因此变化率为零：

$$
\Rightarrow \vec{v} ~=~ \frac{d x}{dt}\hat{i} + \frac{d y}{dt}\hat{j}\\
$$

类似地，

$$
\begin{align*}
    \vec{v} ~ &= ~ \frac{d x}{dt}\hat{i} + \frac{d y}{dt}\hat{j}\\
    \Rightarrow \vec{a} ~ &= ~ \frac{d \vec{v}}{dt}\\
    \, ~ &= ~ \frac{d^2 x}{dt^2}\hat{i} + \frac{d^2 y}{dt^2}\hat{j}\\
\end{align*}
$$

## 极坐标系中

在笛卡尔坐标系中求速度和加速度是平凡的。然而，在极坐标系中，我们必须注意方向的变化。

$$
\vec{r} = r \hat{e}_r
$$

这里，$\hat{e}_r$ 是径向方向，且是角度的函数，即 $\hat{e}_r = \hat{e}_r(\theta)$。

于是：

$$
\begin{align*}
    \Rightarrow \vec{v} ~ &= ~ \frac{d \vec{r}}{dt}\\
    \, ~ &= ~ \frac{d}{dt}\left(r \hat{e}_r \right)\\
    \, ~ &= ~  \frac{dr}{dt} \hat{e}_r + r \frac{d \hat{e}_r(\theta)}{dt}\\
\end{align*}
$$

对于第二项，我们需要应用链式法则：

$$
\Rightarrow \vec{v} ~=~ \frac{dr}{dt} \hat{e}_r + r \frac{d \hat{e}_r(\theta)}{d \theta} \frac{d \theta}{dt}
$$

为了理解 $\frac{d \hat{e}_r(\theta)}{d \theta}$ 是什么，我们可以先考虑极坐标与笛卡尔坐标之间的关系：

$$
\hat{e}_r(\theta) = \cos(\theta) \hat{i} + \sin(\theta) \hat{j}
$$

显然，$\hat{i}$ 和 $\hat{j}$ 不依赖于 $\theta$，因此：

$$
\begin{align*}
    \Rightarrow \frac{d \hat{e}_r(\theta)}{d \theta} ~ &= ~ \frac{d}{d \theta}\left(\cos(\theta) \right)\hat{i} + \frac{d}{d \theta}\left(\sin(\theta) \right)\hat{j}\\
    \, ~ &= ~ -\sin(\theta)\hat{i} + \cos(\theta)\hat{j}\\
    \, ~ &= ~ \hat{e}_\theta\\
\end{align*}
$$

显然，它满足基向量的正交性，即 $\hat{e}_r \cdot \hat{e}_\theta = 0$。

因此：

$$
\vec{v} ~=~ \frac{dr}{dt} \hat{e}_r + r \omega \hat{e}_\theta
$$

其中 $\omega = \frac{d \theta}{dt}$ 是**角速度**，即**角位移**（角度）的**变化率**。（关于它的更多内容，特别是其向量形式，将在后续展示。）

类似地，

$$
\begin{align*}
    \vec{a} ~ &= ~ \frac{d \vec{v}}{dt}\\
    \Rightarrow ~ &= ~ \frac{d}{dt}\left(\frac{dr}{dt} \hat{e}_r\right) + \frac{d}{dt}\left(r \omega \hat{e}_\theta\right)\\
    \, ~ &= ~ \frac{d^2 r}{dt^2} \hat{e}_r + \frac{dr}{dt} \frac{d \hat{e}_r(\theta)}{dt}  + \frac{dr}{dt} \omega \hat{e}_\theta + r \frac{d\omega}{dt} \hat{e}_\theta + r \omega \frac{d \hat{e}_\theta}{dt}\\
    \, ~ &= ~ \frac{d^2 r}{dt^2} \hat{e}_r + 2 \frac{dr}{dt} \omega \hat{e}_\theta + r \frac{d\omega}{dt} \hat{e}_\theta + r \omega^2 \frac{d \hat{e}_\theta}{d\theta}\\
\end{align*}
$$

为了求解最后一项，我们可以再次借助笛卡尔坐标系：

$$
\begin{align*}
    \Rightarrow \frac{d \hat{e}_\theta}{d\theta} ~ &= ~ -\frac{d}{d \theta}\left(\sin(\theta) \right)\hat{i} + \frac{d}{d \theta}\left(\cos(\theta) \right)\hat{j}\\
    \, ~ &= ~ -\cos(\theta)\hat{i} - \sin(\theta)\hat{j}\\
    \, ~ &= ~ -\hat{e}_r\\
\end{align*}
$$

因此：

$$
\Rightarrow \vec{a} ~=~ \left(\frac{d^2 r}{dt^2} - r \omega^2 \right) \hat{e}_r + \left(r \alpha + 2 \frac{dr}{dt} \omega \right) \hat{e}_\theta \\
$$

其中 $\alpha = \frac{d\omega}{dt}$ 是**角加速度**，即**角速度的变化率**。
