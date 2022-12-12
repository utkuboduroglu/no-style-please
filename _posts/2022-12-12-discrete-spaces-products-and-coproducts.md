---
layout: post
title: Discrete spaces, products and coproducts
---

This post practically serves as a "categorical" lemma for an intermediate step in describing how a CW complex can be constructed from pushouts. Passing from one skeleton to the immediate higher dimension one can be done recursively, and certainly this is still valid, it can also be done by taking pushouts of all attaching maps at once. For such a construction, at least as is the case in May[^1], the pushout diagram is slightly modified so that instead of taking pushouts over maps
\\[
    \varphi_{n-1,k}: S^{n-1} \to X
\\]
    we instead take a single pushout over the map

$$ \begin{align*}
        \varphi_{n-1}: J_{n-1}\times S^{n-1}\to X\\
        J_{n-1} := \{ \varphi_{n-1,k}: S^{n-1}\to X \}
   \end{align*} $$

where $$J_{n-1}$$ is given the discrete topology. Now, how do we know that these maps can be readily interchanged? This is the main focus of this post, to lead up to the natural bijection
\\[
    \text{Hom} (DJ\times X, Y) \cong \text{Hom} (\coprod_J X, Y)
\\]
where $$J$$ is a set and $$X, Y$$ are spaces (in $$\mathsf{cgHaus}$$).

Our work is already halfway done before we even start: the "proof" will rely on three main factors:

1. The fact that $$\mathsf{cgHaus}$$ and $\mathsf{Set}$$ is cartesian closed,
1. The fact that the discrete space functor is left adjoint to the forgetful functor $$D: \mathsf{Set} \dashv \mathsf{cgHaus} : U$$,
1. and that $$\mathsf{Set}$$ has the special property that its exponentials also serve as products! 

We first have to show a specific result: it's that given a compactly generated space $$Y$$ and a set $$J$$, we have the following in $$\mathsf{cgHaus}$$:
\\[
    \prod_J Y \cong Y^{DJ}
\\]
We build up to this fact as follows: the right-hand side is just $$\text{Hom} (DJ, X)$$. This hom-set is naturally isomorphic to $$\mathsf{Set} (J, UY)$$ by the adjunction. Since $$\mathsf{Set}$$ is cartesian closed, we have that
\\[
    \mathsf{Set} (J, UX) \cong \mathsf{Set} (1, UX^J)
\\]
Now is the important bit: the set $$UX^J$$ can also be regarded as the $$J$$-product of $$UX$$, a fact that we can use not because of any category theoretic fact, but due to the specific nature of $$\mathsf{Set}$$. This gives us
\\[
    \mathsf{Set} (1, UX^J) \cong \prod_J \mathsf{Set} (1, UX)
\\]
Now, the last four steps are as follows: we revert the adjunction for the hom-sets, we note that the discrete topological space with 1 element is just the space with 1 element, that the covariant hom-functor preserves limits, and that the singleton space is the representative of the identity functor, giving us:

$$ \begin{align*}
        \prod_J \mathsf{Set} (1, UX) &\cong \prod_J \text{Hom} (D1, X) \cong \\
        \prod_J \text{Hom} (*, X) &\cong \text{Hom} (*, \prod_J X) \\
        &\cong \prod_J X
\end{align*} $$

The grunt work is done. We now mention that the dual diagram of a set-shaped diagram is again the diagram itself, which explains the following:
\\[
    \text{Hom} (\coprod_J X, Y) \cong \prod_J \text{Hom} (X, Y) \cong \text{Hom} (X, \prod_J Y)
\\]
The final step is to note that $$\mathsf{cgHaus}$$ is cartesian-closed. This just establishes
\\[
    \text{Hom} (DJ\times X, Y) \cong \text{Hom} (X, Y^{DJ})
\\]

A couple of notes:

1. The discrete space is really compactly generated: it is Hausdorff, and every subspace is clopen, thus it is also a k-space.
1. The only reason we couldn't state the same for $$\mathsf{Top}$$ is that it is not cartesian closed. This breaks the proof in the final step. However, note that the underlying set of both the left and the right side in the initial statement will be bijective.

[^1]: May's Concise Course in Algebraic Topology, chapter 10.
