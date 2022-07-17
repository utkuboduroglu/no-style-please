---
layout: post
title: Multiplication distributes over addition in natural numbers
---

The title of this post is intentionally supposed to not reveal everything the post offers, as I thought that would be a tad more amusing :) It would be much more accurate to label this post **"The monoidal action distributes over coproducts in a locally-small closed monoidal category with coproducts"**. The "proof" will include categorical notions, and the title will be a corollary of the proposition, along with some other corollaries relating to different categories.

**Proposition**: _The monoidal action distributes over coproducts in a locally-small closed monoidal category with finite coproducts_.

**Proof**: Suppose the category $$(\mathsf{C}, \otimes, I)$$ is a locally-small closed monoidal category with finite coproducts. Let $$A, B, C, D \in \mathsf{C}$$ be objects. Consider the hom-set $$\text{Hom} ((A + B)\otimes C, D)$$. Since the category is closed under the monoidal action, we have the adjunction
    \\[
    \text{Hom} ((A + B)\otimes C, D) \cong \text{Hom} (A + B, [C, D])
    \\]
    where $$[C, D]$$ is the internal hom. Now, we know that hom-functors preserve (co)limits of respective variance; more specifically, we know that the hom-functor $$\text{Hom} (-, X)$$ will send colimits to limits. Then, we have that
    \\[
    \text{Hom} (A + B, [C, D]) \cong \text{Hom} (A, [C, D])\times \text{Hom}(B, [C, D])
    \\]
    Now, applying the adjunction in the other direction for both hom-sets in the right hand side, and applying the preservation of the (co)limits in the other direction, we get

$$\begin{align*}
    \text{Hom} (A, [C, D])\times \text{Hom}(B, [C, D]) &\cong \text{Hom}(A\otimes C, D) \times \text{Hom}(B\otimes C, D)\\
        &\cong \text{Hom} ((A\otimes C) + (B\otimes C), D)
\end{align*}$$

Finally, the Yoneda embedding defines a fully faithful embedding $$\mathsf{C} ^\mathsf{op} \to \mathsf{Set} ^\mathsf{C}$$, and so
\\[
    (A + B)\otimes C \cong (A\otimes C)  + (B\otimes C)
\\]

Now, this warrants a couple of notes:
1. Note that we said nothing about the naturality of the objects in question. Now, this is two-fold: one reason is that you can convince yourself that the Yoneda lemma preserves both arguments' naturality and the bifunctor adjunction is necessarily natural in all components. The other reason is that I was pretty lazy in having to prove these and omitted them :p
1. We did not use the full power of what we were given. Although we stated the proposition for finite coproducts, the hom-functors will be able to preserve **ALL** colimits, and so the proposition may have easily stated this for arbitrary coproducts.
1. Since a cartesian closed category is just a closed monoidal category with the monoidal action of $$\times$$, this proposition is again applicable, which is how we can show the title.

Considering the fact that $$\mathsf{Set}$$ is cartesian closed with all coproducts (disjoint unions), we have that for any triple of sets $$A, B, C$$, it is the case that there is a bijection $$f: (A \sqcup B)\times C \cong (A\times C) \sqcup (B\times C)$$. Now, this just implies that these two sets are of equal cardinality. If we were to restrict our attention to the category $$\mathsf{Fin}$$ of finite sets, then this will provide us with the following observations:
* The finite cardinals correspond to natural numbers,
* The disjoint union of two sets have cardinality $$\vert X\sqcup Y\vert  = \vert X\vert  + \vert Y\vert $$,
* The product of two sets have cardinality $$\vert X\times Y\vert  = \vert X\vert \vert Y\vert $$.

Which forms the result
	\\[
	(\vert A\vert  + \vert B\vert )\vert C\vert  = \vert (A\sqcup B)\times C\vert  = \vert (A\times C)\sqcup (B\times C)\vert  = \vert A\vert \vert C\vert  + \vert B\vert \vert C\vert 
	\\]


**Note**: The proposition we've shown can also be applied to the category of Abelian groups with direct sums and tensor products.
