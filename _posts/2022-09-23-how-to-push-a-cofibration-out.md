---
layout: post
title: How to push a cofibration out
---

This post is not supposed to introduce anything new, but rather to illuminate an aspect about cofibrations. The proposition is in May[^1]. This post also doubles as a test of whether TikZ diagrams render properly in blog posts :)

Firstly, notice that for a given diagram $$K: J\to C$$ into a locally small category, the limit $$\lim_{J^\mathsf{op}} C(K-, X)$$ for some object $$X$$ is just a collection of objects acting as cones of $$K$$ with nadir $$X$$, meaning that
\\[
    \lim_{J^\mathsf{op}} C(K-, X) \cong \text{Cone} (F, X)
\\]
Since colimits are just representations of such functors of appropriate variance, we have that
\\[
    \lim_{J^\mathsf{op}} C(K-, X) \cong C(\text{colim} _J K, X)
\\]

Now, as a corollary of this, we can show that left adjoints preserve said colimits (and right adjoints preserve limits). The following argument will be sufficient: Let $$F: C \dashv D: G$$ be an adjunction, and let $$K: J\to C$$ be a diagram.

$$ \begin{align*}
    D(F(\text{colim} _J K), d) &\cong C(\text{colim} _J K, Gd)\\
    &\cong \lim_{J^\mathsf{op}} C(K, Gd)\\ &\cong \lim_{J?^Sop} D(FK, d)\\
    &\cong D(\text{colim} _J FK, d)
\end{align*} $$

Now, by the fact that the Yoneda embedding $$y: D^\mathsf{op} \to \mathsf{Set}$$ is a fully-faithful embedding, we get that $$F(\text{colim} K) \cong \text{colim} FK$$.

Finally, before we can start the main point of the post, we note the following fact, and make another note on the notation to clarify some things:

* Fixing the space $$I \coloneqq [0, 1] \in \mathsf{cgHaus}$$ in the category of compactly-generated Hausdorff spaces, by the fact that this category is Cartesian Closed, we have an adjunction $$-\times I : \mathsf{cgHaus} \dashv \mathsf{cgHaus} : -^I$$. Thus, for any diagram $$K: J\to \mathsf{cgHaus}$$, it is the case that $$(\text{colim} K)\times I \cong \text{colim} (K\times I)$$.
* A note for pushouts: Following standard notation, note that for any pushout $$B \cup_g X$$, the above fact takes the following form in notation: $$(B \cup_g X)\times I \cong (B\times I)\cup_{g\times \text{id}} (X\times I)$$.

Finally, we are ready to show the following proposition:
**Proposition**: Let $$i: A\to X$$ be a cofibration, and $$g: A\to B$$ any map. Then the induced inclusion $$j: B\to B\cup_g X$$ is a cofibration. (Some notes on notation: the maps $$i_0$$ indicate $$1_Z \times \{0\}$$, and $$\text{id}$$ is a special notation for the specific identity $$1_I$$.)

The following is a test diagram of $$i$$ with the pushout diagram for $$B\cup_g X$$:

<script type="text/tikz">
\begin{tikzcd}
	&& {A\times I} \\
	A &&&& B \\
	&& {X\times I} \\
	X &&&& {B\cup_g X}
	\arrow["{i_0}", from=2-1, to=1-3]
	\arrow["{i_0}", from=4-1, to=3-3]
	\arrow["i"', from=2-1, to=4-1]
	\arrow[from=1-3, to=3-3]
	\arrow["j", from=2-5, to=4-5]
	\arrow["g"'{pos=0.7}, from=2-1, to=2-5]
	\arrow["h", from=4-1, to=4-5]
\end{tikzcd}
</script>

Now, we can carry the pushout diagram along the functor $$-\times I$$ to obtain a new pushout:

<script type="text/tikz">
\begin{tikzcd}
	&& {A\times I} &&&& {B\times I} \\
	A &&&& B \\
	&& {X\times I} &&&& {(B\cup_g X)\times I} \\
	X &&&& {B\cup_g X}
	\arrow["{i_0}", from=2-1, to=1-3]
	\arrow["{i_0}", from=4-1, to=3-3]
	\arrow["i"', from=2-1, to=4-1]
	\arrow[from=1-3, to=3-3]
	\arrow["j", from=2-5, to=4-5]
	\arrow["g"'{pos=0.7}, from=2-1, to=2-5]
	\arrow["h", from=4-1, to=4-5]
	\arrow["{i_0}", from=4-5, to=3-7]
	\arrow["{i_0}", from=2-5, to=1-7]
	\arrow["{j\times \text{id}}"', from=1-7, to=3-7]
\end{tikzcd}
</script>

Let's complete our test diagram by some new morphisms through $$I$$ and a test object $$Z$$:

<script type="text/tikz">
\begin{tikzcd}
	&& {A\times I} &&&& {B\times I} \\
	A &&&& B \\
	&& {X\times I} &&&& {(B\cup_g X)\times I} & Z \\
	X &&&& {B\cup_g X}
	\arrow["{i_0}", from=2-1, to=1-3]
	\arrow["{i_0}", from=4-1, to=3-3]
	\arrow["i"', from=2-1, to=4-1]
	\arrow[from=1-3, to=3-3]
	\arrow["j"{pos=0.3}, from=2-5, to=4-5]
	\arrow["g"'{pos=0.7}, from=2-1, to=2-5]
	\arrow["h", from=4-1, to=4-5]
	\arrow["{i_0}", from=4-5, to=3-7]
	\arrow["{i_0}", from=2-5, to=1-7]
	\arrow["{j\times \text{id}}"', from=1-7, to=3-7]
	\arrow["{h\times \text{id}}"'{pos=0.3}, from=3-3, to=3-7]
	\arrow["{g\times \text{id}}"', from=1-3, to=1-7]
	\arrow["{\varepsilon_1}"', from=1-7, to=3-8]
	\arrow["{\varepsilon_0}"', from=4-5, to=3-8]
\end{tikzcd}
</script>

Notice the maps $$\varepsilon_0 h = \varepsilon_1 \circ g\times \text{id} $$. Since $$i: A\to X$$ is a cofibration, we have a map $$\tilde h : X\times I \to Z$$ commuting with both these maps. But then, as $$(B\cup_g X)\times I$$ is also the pushout $$(B\times I) \cup_{g\times \text{id}} (X\times I)$$, there is a unique map $$k: (B\cup_g X)\times I \to Z$$ commuting the following diagram:

<script type="text/tikz">
\begin{tikzcd}
	{A\times I} && {B\times I} \\
	& {(B\cup_g X)\times I} \\
	{X\times I} && Z
	\arrow["{i\times \text{id}}", from=1-1, to=3-1]
	\arrow["{g\times \text{id}}"', from=1-1, to=1-3]
	\arrow["{\varepsilon_1}"', from=1-3, to=3-3]
	\arrow["{\tilde h}", from=3-1, to=3-3]
	\arrow["{h\times \text{id}}"{description}, from=3-1, to=2-2]
	\arrow["{j\times \text{id}}", from=1-3, to=2-2]
\end{tikzcd}
</script>

which is exactly what we needed for $$j$$ to be a cofibration.

[^1]: May's Concise Course in Algebraic Topology, chapter 6.
