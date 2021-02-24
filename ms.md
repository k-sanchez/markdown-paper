---
output: 
    pdf_document:
      citation_package: natbib
      keep_tex: true
      fig_caption: true
      latex_engine: pdflatex
  
title: "nice title"
author:
	- Author from first affilitation¹
	- Author from second affilitation²
date:	¹First affiliation\newline
	²Second affiliation

abstract: "abstract text... [keywords]"

geometry: margin=1in
fontsize: 11pt
# spacing: double
citation-style: nature.csl # cambiar de acuerdo al estilo deseado
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

<div id="refs"></div> <!-- force references to this location and not at the end of the file as default -->

## Tables

## Figures

\includegraphics[width=\textwidth]{image.pdf}\captionof{figure}{caption text} <!-- insert pdf image -->
