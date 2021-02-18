---
output: 
  pdf_document:
    citation_package: natbib
    keep_tex: true
    fig_caption: true
    latex_engine: pdflatex
	pandoc_args: "--latex-engine-opt=--shell-escape"

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
---
## Introduction

Es sabido que los eventos geo-climaticos ocurridos en el pasado han impactado en gran medida los patrones de diversificacion en distintos grupos de taxa. El estudio de tales fenomenos es interesante puesto que los linajes pueden exhibir respuestas diferenciales. A su vez, el estudio de los procesos evolutivos y ecologicos que llevan a la divergencia de los linajes nos permiten aproximarnos a la dinamica de estos eventos pasados.

La Patagonia es una amplia region geografica que ha estado muy influenciada por multiples ciclos de glaciaciones. Estos ciclos de periodos glaciares e interglaciares han provocado la separacion y posterior reunion de linajes, respectivamente. Evidencia de esto puede reflejarse en los patrones de dist. de la variabilidad genetica en taxa que habitan esta region. Estudios previos incluyen taxa tan dispares como plantas, mamiferos, y lagartijas.

Avances recientes en técnicas de secuenciación han posibilitado el acceso a información genómica en numerosos taxa no modelos, posibilitando el acceso sin precedentes a cientos o miles de loci. Esto además ha estado acoplado a un creciente desarrollo de métodos de análisis (citar software MSC, MSNC, iqtree, exabayes, etc.). Sin embargo, practicamente todos los métodos comunmente empleados para el análisis de información genómica se basan en supuesto simples. Es por ello que se hace necesario evaluar el ajuste de los modelos subyacentes a estos métodos a los datos de los que uno dispone. Ha habido un considerable avance en cuanto a protocolos de evaluación de ajuste a modelos (citar P3, ajuste a GMYC, a SNAPP, Reid, Barley, Brown2014, etc.), los cuales están basados principalmente en pruebas a posteriori de análisis bayesianos (?)

Lagartijas del grupo L. kingii constituyen un componente importante de la fauna Patagonica
Poner a prueba hipotesis de radiacion rapida y simultanea (ramas cortas) promovida por la disponibilidad de habitats. hablar tambien sobre hibridacion y conservadurismo morfologico

Se puede mencionar sobre la amplia extension de la sp L. kingii segun la bibliografia (ver los trabajos de cei) (aca estarian incluidos los distintos clados de la tesis de Breitman)

It could be argued that some distinguished lineages within this group are in early stages of the process of differentiation, termed Incompletely Separated Lineages (de Queiroz 2020), or well established (mature) lineages with scarce phenotypic differentiation.

Existen numerosas hipotesis sobre la dinamica de los eventos climaticos pasados, aunque hay tambien una falta de trabajos en donde se empleen marcadores genomicos que nos permitan inferir con mayor precision como fueron estos eventos. A su vez resulta interesante evaluar la dinamica de la evolucion fenotipica en grupos tan ampliamente dispersos como el grupo kingii. Objetivos:

Several instances of cryptic diversity were revealed thanks to the increasing use of genetic markers

## Materials and methods

### Sampling and data collection

Were analyzed 785 specimens whose distribution spanned most of the geographical range of the _Liolaemus kingii_ clade, including L. archeforus, _L. gallardoi_, _L. kingii_, _L. tristis_, and lineages whose taxonomic status remain uncertain (_L._ sp. 4, _L._ sp. 5, _L._ sp. 6, _L._ sp. 7, and _L._ sp. 8; Breitman2011). In addition, we included 236 samples corresponding to the southernmost lineages analyzed previously (i.e. _L. baguali_, _L. escarchadosi_, _L. sarmientoi_, and _L. tari_; Sanchez2021), allowing us to have a broader picture of the diversification of this clade. The complete dataset consisted of 1021 ingroup individuals belonging to nine of 11 species of the _L. kingii_ clade, all deposited in the LJAMM-CNP collection (Centro Nacional Patagónico, Puerto Madryn, Chubut, Argentina); details in Appendix. 

<!-- 236 muestras de australes puesto que no incluyo spA (si no serian 241 inds.; tener en cuenta tambien que seqs de 9238, 9333 y 9428 son incluidas en este trabajo, en Sanchez etal 2020 fueron usados solo p/morfolog. por lo que constituyen nuevas seqs -->

Genomic DNA was extracted from tissue (tail tips and liver) with either a Qiagen DNeasy extraction kit (Qiagen Inc., CA, USA) or the NaCl-isopropanol extraction method (MacManes2013).

We compiled cytochrome _b_ data for 1022 specimens (1021 ingroup plus one outgroup sequences): new _cytb_ data was generated for 743 individuals, and 279 sequences were obtained from GenBank (details in Appendix). Protocols of amplification and sequencing followed Morando2003. _Liolaemus silvanae_, a member of the closely related _L. lineomaculatus_ group, was used as outgroup. Sequences were aligned in MAFFT v7.450 (Katoh2013) with the L-INS-i strategy. The final alignment consisted of 812 pb. This dataset was further reduced to 617 unique haplotypes.

A subset of 114/112 individuals was selected for genomic analyses. Genomic DNA from each specimen was individually barcoded and processed into a genomic library using the double-digestion restriction-fragment-based procedure (ddRADseq), described in (Peterson2012). Single-read 50-bp sequencing was performed on an Illumina HiSeq2500 platform at University of California Berkeley’s QB3 Vincent J. Coates Genomics Sequencing Laboratory.

FastQC (Andrews2010) was used for raw reads quality control, and reports were summarised with the R package fastqcr (Alboukadel2018). Reads were demultiplexed and quality filtered with the process\_radtags module of Stacks v2.53 (Rochette2019). Further filtering and clustering was carried out in ipyrad v0.9.30 (Eaton2020). A sequence similarity clustering threshold of 0.9 was selected, according to the optimization protocol suggested in (McCartney-Melstad2019). This threshold determines how divergent two reads representing alleles from the same homologous locus can be. We performed two assemblies that differed in the minimum loci coverage: a "permissive" dataset, with a minimum sample coverage of 20 \% of individuals; and a "strict" dataset, that aimed at a minimum sample coverage of 80 % of individuals. The "permissive" dataset was expected to be more phylogenetically informative due to its larger size in comparison to the "strict" dataset, which was assembled since some analyses are more sensitive to missing data (e.g. infernce of population structure). Details for each assembly are given in Table SX.

The phenotypic data consisted in...

### Mitochondrial phylogeography

Sequences of _cytb_ were used to estimate the mitochondrial genetic structure and its geographic distribution. Inference of best-fit nucleotide substitution model and Maximum Likelihood tree search were conducted on the _cytb_ data in IQ-TREE v2.1.2 (Minh2020). The best model of nucleotide substitution was determined in ModelFinder (Kalyaanamoorthy2017), and the different models were assessed through their corrected Akaike Information Criterion scores (AICc; Hurvich1989). Branch supports were assessed with 1000 iterations of both, UltraFast-Boostrap approximation (UFBoot; Minh2013), and Shimodaira-Hasegawa approximate Likelihood Ratio Test (SH-aLRT; Guindon2010). UFboot values $\geq$ 95 % and SH-aLRT $\geq$ 80 % were indicatives of high branch support.

### Genomic analyses

#### Individual relationships

VERSION 1

We conducted a partitioned tree search on the concatenated ddRAD loci of the "permissive" dataset in IQ-TREE 2 (Chernomor2016, Minh2020). The partition scheme and substitution model parameters were selected in ModelFinder (Kalyaanamoorthy2017), which implements a greedy strategy (Lanfear2012). Branch lengths for each partition were estimated following the edge-linked proportional partition model (option `-p`). The substitution model was restricted to General Time Reversible (GTR; Tavare1986) plus empirical base frequencies (+F) and a discrete Gamma model of rate heterogeneity with 4 rate categories (+G4; Yang1994). Given the heuristic nature of the search strategy, we inferred ten independent Maximum Likelihood trees: five searches started from a set of 98 parsimony trees and a Rapid Neighbor Joining tree (RapidNJ; Simonsen2008), and the remaining five started from a set of 99 random trees. ML trees from each run were compared based on their log-likelihoods, and normalized Robinson-Fould distances (Robinson1981) were computed in the R package Phangorn (Schliep2011). Branch supports were obtained with the standard non-parametric boostrap approach (SBS; Felsestein1985), which were mapped on the tree with the highest log-likelihood.

#### Population structure

Patterns of population structure were investigated with Admixture (Alexander2009) implemented in AdmixPipe (Mussmann2020), a tool that accepts Variant Call Format files. Admixture infers individual ancestries in a Maximum Likelihood framework, and outperforms other implementations such as the MCMC-based STRUCTURE (Pritchard2000) in terms of computational efficiency. A matrix of unlinked SNPs was generated from the "strict" dataset with custom R scripts (available at https://github.com/laninsky/GBS_SNP_filter). Ancestry coefficients (Q) were estimated based on 10 replicate runs and 50-fold cross-validation (CV) for each of _K_ = 1-10 clusters. Results for each _K_ were summarized in CLUMPAK (Clustering Markov Packager Across K; Kopelman2015). CV-values for all major cluster runs were obtained with distructRerun.py, and cvSum.py was used to summarize the variability of CV-values across runs, allowing us to make an informed decision on the optimal _K_ (both scripts are included in AdmixPipe). Barplots were produced with StructuRly (Criscuolo2020), in the R environment (RCoreTeam).

#### Inference of species limits and species trees

We inferred species trees under three approaches: concatenated-partitioned and multispecies-coalescent (MSC) employing blocks of sequences, and MSC employing only variable sites (SNPs). For the first two approaches we employed the RAD loci from the "strict" dataset, for the third approach we extracted a single SNP per locus.

The concatenated partitioned analysis was performed in IQ-TREE, with same specifications as above.

Burbrink et al. 2020: We compared these concatenated and species trees using Robinson–Foulds (RF) distances (Robinson and Foulds, 1981), which provide a measure of topological dissimilarity, and then determined if all measures of support were correlated among shared branches using Spearman rank correlation

We specify difusse Gamma priors for theta and tau parameters ($\alpha = 3$ and $\beta = 0.002$, for both $\theta$ and $\tau$).

We also used the automatic adjustment option for the MCMC step lengths to help ensure proper mixing. 

Rannala and Yang proposed an empirical approach to test for independence of lineages... Assuming a generational time of xx years (cita)

The fossil record of _Liolaemus_ is limited to the Early Miocene (Albino2020), and our dataset includes lineages that diverged much more recently (including the outgroup). For that reason, we indirectly calibrated our species tree using previously estimated divergence times from Cita et al. (2011), who utilized the available fossil information. The dating was placed in the divergence between the _L. lineomaculatus_ and _L.kingii_ groups ()

Analyses were carried out on a Unix server (Intel® Core^TM^ i9-7900X CPU @ 3.30GHz processor with 20 threads, and 65 GB memory) 

### Phenotypic analyses

We evaluated trends in phenotypic evolution. Phenotype was represented by two types of variables, body size dimensions and dorsal head shape. 

Details on data collection and Procrustes superimposition follows Sanchez et al (2021)

We analyzed XXX adult specimens

summary statistics of reads before and after filtering

REFORMULAR ESTO: Especificar que se descarto un ind. (9816) por bajo n loci

CYTB

. 1022 inds: alignment mafft (L-INS-i)
. Check 3rd base saturation: DAMBE
. iqtree ufboot (ver Sanchez et al 2020)
. Sequence divergence main clades -> TN (no hecho)

RADSEQ

. Exploracion y filtrado:
- fastqc y fastqcr
- ipyrad
- bcftools
- vcf2phylip (p/generar .phy .nex filtrado, no usado aun)
. Raxml-ng
- Phylog network: phylonetworks (y SNP2CF) (no hecho) -> HACER SI O SI (TICR test: tree versus network?)
. Genome cline analysis (hzar) (no hecho)
. Pop structure:
- Pca 2d-3d y dapc adegenet
- structure (structure\_threader): admixture model correlated allele freq
- Fineradstructure (no hecho)
. Spp tree:
- Astral III (no hecho)
- SNAPP (y P2C2M.SNAPP): calibrated tree (no hecho)
- BPP (manual)
- Mcmctree (paml). Ver Chen et al.\_2020\_Molecular Phylogenetics and Evolution(2) p/estimacion de tasa de sust.

. OTROS:
- Se puede analizar si los quiebres e/linajes corresponden a cambios de ambiente, ver mapas

. MORFOLOG
- Seleccionar un subset de fotos y medir p/cuantificar error (morfogeo)
- Correlacion (fn chart.Correlation, paquete PerformanceAnalytics) -> hecho
- Algo de senial filogenetica?
- Filomorfoespacio en geomorph/phytools
- Explorar modos de evol. morfologica y disparidad morfolog. en el tiempo (geiger)
- patternize (R) (no hecho, interesante)

## Results

### Mitochondrial phylogeography

The Maximum Likelihood cytb gene tree revealed a high structure. Fourteen major clades were identified, of which eight included specimens collected from type localities of described species. Of the remaining clades, four included specimens of lineages hypothesized as candidate species, and two are. Our results inferred specimens assigned previously to candidate species L. sp. 6 and sp. 7 in a single clade. It is noteworthy the basal position of the lineage L. sp. 4, which is the northernmost lineage that also shows a discontinuous distribution respect to the rest of the lineages. The geographic overlap between the majority of the lineages is evident.

Notas sobre analisis:

Hay una concordancia parcial e/clusters de adegenet, clusters de fineradstructure  y clados de iqtree. 

Ver que pasa con gallardoi y sarmientoi. por los analisis hay q sinonimizar. Ver relaciones filog. publicadas

## Discusion

The most robust topology in terms of node supports was recovered using an inclusive genomic data set including a high proportion of missing sites (raxml con ensamble min23), in agreement with previous empirical studies (ver Noguerales etal., 2018)

## References

## Figures

\includegraphics[width=\textwidth]{figures/CytbTrees_maps.pdf}