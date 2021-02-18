---
output: 
  pdf_document:
    citation_package: natbib
    keep_tex: true
    fig_caption: true
    latex_engine: pdflatex

title: "A Pandoc Markdown Article Starter and Template"
author:
- name: Steven V. Miller
  affiliation: Clemson University
- name: Mary Margaret Albright
  affiliation: Pendelton State University
- name: Rembrandt Q. Einstein
  affiliation: Springfield University
abstract: "This document provides an introduction to R Markdown, argues for its..."
keywords: "pandoc, r markdown, knitr"
geometry: margin=1in
fontsize: 11pt
# spacing: double
bibliography: references.bib
citation-style: nature.csl
link-citations: true
header-includes:
	- \usepackage{hyperref}
	- \usepackage{graphicx}
	- \usepackage{caption}
---
## Introduction

## Materials and methods

## Results

## Discusion

## References

## Figures

\includegraphics[width=\textwidth]{image.pdf}\captionof{figure}{caption}
