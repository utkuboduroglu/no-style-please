---
layout: post
title: A naive method for calculating simplex-ray intersections
---

This post was motivated by the need to compute ray intersections with triangles, with which one usually constructs meshes in 3d-programs, or more technically, simplicial complexes that are also triangulations. We will outline a general method for the computation, but will restrict to 2-simplices for ease of use in our initial motivating case.

Let $T: \Delta^n \to \mathbb{R} ^{n+1}$ be an $n$-simplex in $(n+1)$-Euclidean space. Assume that the vertices of $T$ are ordered linearly; then there exists an affine hyperspace $P$ of dimension $n$ such that $v_0$ coincides with the origin and the simplex is embedded in the space. Consider a basis for the hyperspace, constructed as follows:

$$
    \mathfrak{B} = \{ v_1 - v_0, v_2 - v_0, \dots, v_n - v_0 \}
$$

Now, there exists a vector $N\in \mathbb{R} ^{n+1}$ such that $\mathfrak{B} \cup \{N\}$ constructs a basis for $\mathbb{R} ^{n+1}$. Such a hyperspace could be described as the set of points $x$ satisfying the relation $\langle v_0, N \rangle - \langle x, N \rangle = 0$. Consider the point $x - v_0 \in P$. We can describe this element in the basis we chose, in the following form:

$$
	x = v_0 + \langle x - v_0, v_1 - v_0 \rangle (v_1 - v_0) + \langle x - v_0, v_2 - v_0 \rangle (v_2 - v_0) + \dots + \langle x - v_0, v_n - v_0 \rangle (v_n - v_0)
$$

Now, we can consider $x - v_0$ an element of $P$. Notice that the check for whether the point $x - v_0$ is in $T$ reduces to the case of checking whether $\langle x - v_0, v_i - v_0 \rangle \in [0, 1]$ and $\sum_{i \neq 0} \langle x - v_0, v_i - v_0 \rangle = 1$. If all these conditions are satisfied, then the point $x$ intersects the simplex $ \begin{bmatrix}
v_0 & v_1 & \dots & v_n
\end{bmatrix}$.

We specialize the method highlighted to 3-space. Given any ray $r: \mathbb{R} \to \mathbb{R} ^3$ of the form $r(t) := r_0 + ut$ intersects the plane the simplex $ \begin{bmatrix}
v_0 & v_1 & v_2
\end{bmatrix}$ lives in if and only if there is a $t' \in \mathbb{R}$ such that $\langle r(t'), N \rangle - \langle v_0, N\rangle = 0$, where $N$ can be obtained by $N := (v_1 - v_0)\times (v_2, v_0)$. Then, we can check whether the ray intersects the triangle itself by checking whether ALL the following conditions hold:

$$
\begin{align*}
	0 \leq \langle r(t') - v_0, v_1 - v_0\rangle \leq 1\\
	0 \leq \langle r(t') - v_0, v_2 - v_0\rangle \leq 1\\
	\langle r(t') - v_0, v_1 - v_0\rangle + \langle r(t') - v_0, v_2 - v_0 \rangle = 1
\end{align*}
$$
