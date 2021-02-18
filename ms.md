---
output: 
  pdf_document:
    citation_package: natbib
    keep_tex: true
    fig_caption: true
    latex_engine: pdflatex

title: "Title"
author:
	- Author1
	- Author2
	- Author3
	- Author4
	- Author5
abstract: "This document provides an introduction to R Markdown, argues for its...[keyword, keyword, kwyword]"
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

Cite like this [@einstein, @latexcompanion]

## Materials and methods

## Results

## Discusion

## References

<div id="refs"></div> <!-- forzar referencias a esta ubicacion -->

## Tables

## Figures

\includegraphics[width=\textwidth]{image.pdf}\captionof{figure}{caption}
