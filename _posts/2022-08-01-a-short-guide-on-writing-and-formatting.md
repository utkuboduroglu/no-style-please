---
layout: post
title: A short guide on writing and formatting (draft)
---

Whether in casual conversation or in technical writing, I've always spent a good amount of my time writing on formatting and styling my text. Although no one's asked me for an article like this, I've been contemplating writing a document for myself (and people who very rarely ask) describing how writing a text -- both digitally and physically -- takes place for me. I have somewhat of a system that I use, which I will describe below.

# The "philosophy" I utilize
I have an education on Mathematics; as a result, I've been using $$\LaTeX$$ for a good couple of years. Even if I hadn't, most of the literature in scientific and mathematical circles are usually typeset in $$\LaTeX$$. As a result, I believe that keeping my writing style in-line with that of the content I'm most immersed in is a good rule of thumb to ensure that my thoughts are more or less uniform with that of what I see. Moreover, outputting documents in the same style as I consume helps more with this uniform-ness.

Thus, if I were to summarize my thought process in one line, it would be:

```
Make sure any text you produce (whether digital or physical) resembles a LaTeX document as closely as possible.
```

# Tools for typesetting
Here are some of the tools I utilize while typesetting, both digitally and physically:

* $$\LaTeX$$ and `pdflatex` for most technical documents, like mathematical papers, homework files etc.
* [Markdown](https://www.markdownguide.org/getting-started/) for fast word processing, whether for programming project documentation, or for writing blog posts (like this one!)
* `vim` as a text editor. I also use `sed` for some $$\LaTeX$$ macros, which quickly convert tokens like `?sText` into `\mathsf{Text}`.
* Pen and paper for physical processing :) All jokes aside, the dimensions of the paper influence how I structure the page; the rules I use for A4 differ from that of A5.

# Structuring a page
The most prominent thing I watch out for is the page structure. The content of a page is definitely important, but a couple other considerations will definitely improve the readability and brevity of a text.

## Page geometry and margins
Any document that you create using a typesetting tool will introduce margins and other rules for page geometry. This is definitely one of the most important things to consider when creating a document, as this is fundamental for readability. No one wants to spend time trying to comprehend what a document is describing just because they are bombarded with information all at once that could have been prevented if the page geometry had been considered. Although writing style is individual, a **rule of thumb I follow** is to break off paragraphs if the associated source code representation becomes too long or cluttered.

## Formatting page content
In any given document, you'll probably encounter the following:

1. titles and section headings,
1. paragraphs,
1. lists (both enumerated and itemized),
1. figures (images, diagrams, etc.),
1. centered text:
    * text that has been justified differently than the document to highlight importance,
    * important statements, like mathematical expressions and/or pseudocode etc.

Here is an example for an "aligned" math environment:
\\[
	\text{\normalfont Hom} (A\otimes B, C) \cong \text{\normalfont Hom}(A, [B, C])
\\]

Using word processors like $$\LaTeX$$ or standards like Markdown will ensure standards for everything described above. What remains is to emulate those standards on paper in a way that oneself will be able to parse easily. In such a case, one will be able to achieve an almost uniform representation in each of the following:

* A document (whether technical or not) on paper,
* A source code file `.tex, .md` intended to be compiled into a final state,
* A digital document `.pdf, .html, ...`

A good side effect of keeping a uniform handwriting standard allows one to utilize various tools interchangably. For example, a document written in the Markdown standard can easily be converted to one written in the $$\LaTeX$$ standard in an almost one-to-one fashion, either by hand or by utilizing tools like [`pandoc`](https://pandoc.org/MANUAL.html#specifying-formats).

## Source code "environments" and sectioning a page
Writing a document digitally usually involves partitioning the content of the document into sections. This is very practical to increase readability, as one can skip to a relevant section, and as a consequence won't have to incessantly scroll through the document. The same will apply to a paper document for the same reasons:

* it is easier to find content when there is a huge text on the paper telling what is to follow,
* and it is tremendously faster to process titles than it is to process the whole page.

Thus, one should keep in mind how they're to format their titles and sections when writing digitally/physically. Titles do not necessarily need to be centered; this is just up to personal preference. One can also consider splitting the content of the document with "environments": an example of this is for mathematical content; these documents will often include environments like `theorem, proposition, proof, remark, corollary, ...` which may be written in a different style than the rest of the document.

# Fonts and handwriting
$$\LaTeX$$ allows one to use a choice of various font styles[^1] when typesetting; this is especially the case for mathematical texts, as they will contain: normal fonts, $$\mathsf{sans serif fonts}$$, math fonts, etc. As a consequence, one should be able to emulate this type of typesetting as closely as possible. There will of course be impossibilities, like bold handwriting, but the important feature here is one's ability to interpret whether something handwritten should be typeset as bold in a digital document and vice versa.

Moreover, such documents will also contain various collections of symbols one may not usually utilize, including but not limited to:

1. Latin characters $$a$$,
1. Greek characters $$\alpha$$,
1. Cyrillic characters Д,
1. Fraktur/Gothic characters $$\mathfrak{B}$$,
1. Blackboard bold characters $$\mathbb{R}$$,
1. And various choices of other alphabets and symbols, which one may consider to be `Unicode`.

As a result, one should reflect on which collections of symbols one is likely to utilize, and update their handwriting accordingly. Will one use $$x$$ and chi $$\chi$$? How about zero, the empty set $$\emptyset$$ and theta $$\theta$$ and/or phi $$\phi$$? How often will one use $$\mathfrak{B}$$? Will your handwriting distinguish between $$R$$ and $$\mathbb{R}$$, or $$k$$ and $$\mathbb{k}$$, as is often the case in topology and algebraic geometry?

[^1]: [collection of font styles usable in LaTeX](https://en.wikibooks.org/wiki/LaTeX/Fonts#Font_styles)
