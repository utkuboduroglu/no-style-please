---
layout: post
title: A short markdown guide for blogs with no-style-please
category: reference
---

I have very recently started using `no-style-please` for my personal blog, and in order to be able to quickly refer to a source for how to style the markdown posts, I decided that I can just create my own. Note that **this page will be updated somewhat periodically for more depth.**

## General overview of what already exists
The subset of pure Markdown is still allowed. Adding links, images, references etc. are exactly the same. The following `verbatim` block highlights both how one can create verbatim blocks (inspect the source for this), and also how one can create jumps to chapters and create references:

```
One can refer to a citation by using the blocks `[^i]`, where i is the integer pointing to the reference. You can also create references at the bottom of the page by using:
[^i]: this is what the text of the reference is.
Similarly, one can create jumps by linking to [text](#text-of-heading), which for example jumps to the heading with name "Text of Heading".
```

Check out this post[^1] for more details.

## Math mode with Kramdown
My specific blog uses Mathjax 3.x with Kramdown 2.3, provided by Github pages. Along with the [standard Markdown rules](#general-overview-of-what-already-exists), I can use specific $\LaTeX$ syntax to create math-mode environments, the specifics of which is highlighted in [this file in my includes.](https://github.com/utkuboduroglu/utkuboduroglu.github.io/blob/master/_includes/head.html)

## Obligatory xkcd reference
The following is an obligatory image I include, due to its nature and (creepy) accuracy[^2]:

![nerd sniping, xkcd](https://imgs.xkcd.com/comics/nerd_sniping.png)

[^1]: [riggraz's overview post.](https://github.com/riggraz/no-style-please/blob/master/_posts/2020-07-07-overview-post.md)
[^2]: this footnote is just for expressing admiration towards [xkcd](https://xkcd.com/356/), the comics of whom kept me amused and distracted for many hours when I really should have been focused on something else.
