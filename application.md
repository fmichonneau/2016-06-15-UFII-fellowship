---
author:
title:
geometry: margin=.5in
papersize: letter
indent: true
documentclass: article
mainfont: "Crimson Text"
mainfontoptions: Ligatures=TeX,Scale=1.1
---

# Cover Sheet

## Title: Improving DNA sequence classification for metabarcoding of animal communities



## List of personel

* **Post-Doctoral Associate:** François Michonneau, Whitney Laboratory for Marine
Bioscience. [francois.michonneau@whitney.ufl.edu](mailto:francois.michonneau@whitney.ufl.edu)


* **PI:** Mark Martindale, Whitney Laboratory for Marine Bioscience. [mqmartin@whitney.ufl.edu](mailto:mqmartin@whitney.ufl.edu)

* **Co-PI:** Robert Guralnick, Florida Museum of Natural History. [robgur@gmail.com](mailto:robgur@gmail.com)

* **Co-PI:** Joseph Ryan, Whitney Laboratory for Marine
Bioscience. [joseph.ryan@whitney.ufl.edu](mailto:joseph.ryan@whitney.ufl.edu)


----

**Project start date:** September 1st, 2016

**Amount of support requested:** $50,568

\pagebreak
\clearpage
\setcounter{page}{1}

# Introduction

High-Throughput sequencing (HTS) is poised to revolutionize how biodiversity is
studied. The parallel sequencing of all species found in a community replaces
the time-consuming steps of isolating and recognizing each species found in an
environmental sample, and even allows the characterization of communities whose
members could not be identified based on morphology [@Kartzinel2015],
[@Leray2015], [@Leray2015a]. The challenge now rests on developing computing
tools that can take advantage of publicly available data to match these DNA
sequences to the organisms they are coming from.

<!-- paragraph here about how using phylogenies is going to help understand -->
<!-- community phylogenetics.. End with something like not only it's going to be -->
<!-- an useful technology to characterize and discover biodiversity, but also to -->
<!-- understand how communities are assembled, how their members interact, and -->
<!-- how the environment affects that. -->

Estimates for the number of species found in the oceans vary by orders of
magnitude [@Appeltans2012], [@Costello2013], [@Mora2011a]. This uncertainty
stems from the difficulty of sampling the diversity of habitats hidden under the
ocean's surface, and our relative poor taxonomic knowledge for most groups. The
use of molecular data to study marine biodiversity has improved our
understanding of how species are distributed in space [@Schroth2002], how they
interact [@Leray2015a], how they are related to each others [@Dunn2008], and how
to distinguish them [@Knowlton2000]. Since the early 2000's, DNA barcoding (see
Figure 1 and Box 1) has been widely adopted by the community to facilitate
future identification, and uncover species complexes (e.g.,
[@Michonneau2015-impatiens]). Almost 5 million DNA barcodes are publicly
available representing diverse taxonomic groups, from all latitudes, covering
both marine and terrestrial habitats. This dataset is the most comprehensive for
which the same gene has been sequenced and is associated with curated taxonomic
information. To take advantage of this data, metabarcoding (see Figure 1 and Box
1) targeting COI is emerging as the approach of choice to characterize marine
communities based on DNA. However, marine biodiversity is still poorly
characterized, and many taxa have not yet been sequenced for COI. The challenge
addressed by this proposed research is to find the most likely taxon for a
sequence given the species that have been sequenced for COI.

<!-- if including community phylogenetic give some background on it -->

<!-- need to talk on how much better it is to assemble local database of COI -->
<!-- sequences to increase chances of matching -->


Current software used to assign taxon names to DNA sequences generated with HTS
are ill-suited for animal communities. These software were originally designed
to analyze sequences originating from microbial communities
[@Bazinet2012]. Metabarcoding studies on bacteria typically target the genetic
marker 16S. It is known to provide good resolution at low taxonomic level and is
easy to amplify across a large diversity of species. Several databases of 16S
sequences for bacteria have been assembled against which researchers can match
their sequences. Because 16S in a non protein-coding gene, it evolves
differently from COI, and the algorithms used to match the 16S sequences to the
reference database do not take advantage of the protein-coding nature of
COI. Another approach with bacterial communities, metagenomics, seeks to match
genomic DNA from environmental samples to sequenced genomes. This approach is
still not applicable across diverse groups of animals given that genomes are
larger than in bacteria, and most animal taxa do not have genomes available.

I propose to develop new tools and open-source software to assign taxon names to
protein-coding DNA sequences generated in metabarcoding studies. I will test the
performance and accuracy of these tools on simulated datasets, and on
metabarcoding datasets generated from marine communities. This research is
interdisciplinary and integrates biodiversity informatics, evolutionary biology,
ecology, and statistics.

Over the course of this project, I will work on three goals:

- **Goal 1:** develop a web-based tool to manage the heterogeneous but linked
  data generated in biodiversity surveys.
- **Goal 2:** improve the assignment of taxonomic information to DNA sequences
  generated during metabarcoding surveys.
- **Goal 3:** combine sequence data and taxonomic information to generate
  community phylogenies based on the sequences obtained from metabarcoding.


![Comparison of workflows for barcoding and metabarcoding. With barcoding (A), tissues from specimens are used to isolate their DNA (gray strand). The barcoding gene (colored dots) is amplified by PCR, and a unique sequence for each specimen is obtained using Sanger sequencing. The sequences obtained can be used to build a reference library, where sequences are associated with a voucher specimen. With metabarcoding (B), DNA from an environmental sample (e.g., sea water containing planktonic larvae) is isolated. This solution contains DNA from multiple species, and the barcoding gene is amplified for the species. An High-Throughput Sequencing (HTS) platform (e.g., Illumina) is used to sequence all the amplified fragments of DNA (the amplicons). These sequences are analyzed bioinformatically: the sequences are matched against a reference database to identify the species contained in the environmental sample.](figures/drawing.pdf)


--------------------------------------------------------------------------------
**Box 1**

**Barcoding and COI** A portion of the cytochrome oxidase I (COI, a
mitochondrial gene) has emerged as a universal genetic marker to document
genetic diversity in animals. For most taxonomic group, COI has low
intra-specific but high inter-specific variation allowing species delineation
and identification.  A public database (BOLD, the Barcode Of Life Datasytem) has
been developed to store these DNA sequences alongside with voucher information
(in which natural history museum is the specimen from which the DNA comes from
held?), photography of specimens, and quality control on the sequence
data. Currently, this publicly available database holds almost 5 million
sequences from specimens collected worldwide, and from a large diversity of
taxonomic groups.

One of the strengths of DNA barcoding is that it allows the identification of
animals from parts and from all stages of the life cycles. It becomes possible
to identify species found in fish guts to infer their diet, or to associate
larval forms to the adults (which butterfly is this caterpillar going to
metamorphose into? or what is the adult stage of this larva found in the
plankton?)

Among closely related species, COI sequences mostly vary at the third codon
position. Because of the redundancy of the genetic code, mutations on the third
codon affect less often the protein sequence than mutations at the other two
codons. Among more distantly related taxa, this excess of mutations on the third
codon may lead to convergent mutations. This leads algorithms based on sequence
similarity to assign sequences to the wrong taxa if no exact match is found.
However, these distantly related taxa will also include mutations on the other
codons that will lead to differences in their protein sequences. Because the
protein sequence will evolve slower than the nucleotide sequence, it will be
more accurate to infer the higher taxonomy from the sequence.

--------------------------------------------------------------------------------


# Research questions

Global and local threats (e.g., ocean acidification, increased temperatures,
pollution, over-fishing) require better characterization and monitoring of marine
communities, so we can evaluate and understand their impact on biodiversity and
on how communities are assembled. Metabarcoding makes it possible to estimate
the number of species occurring in the plankton, in the gut of fish (to infer
their diet), or in marine sediments. Identifying species in such communities
based on morphology is time consuming, and often imperfect, as identifications
must be done on character-poor organisms (e.g., larvae in the plankton) or on
fragments (e.g., a shrimp leg in a fish gut).

Metabarcoding is still a new technology whose limitations need to be better
defined, but its potential to help us understand not only how many species are
found in a given community, but also identity the species will improve our
understanding on how these communities are assembled, and in turn gain insights
into basic information on the natural history of taxa for which no data
currently exist. <!-- give examples: are closely related taxa reproduce at the -->
<!-- same time of the year; what is the effect of the lunar cycle/seasons on the
reproduction; how do predators target their preys; how does the phylogenetic -->
<!-- composition of a community changes along environmental gradients --->

### 1. Comparison of metabarcoding from benthic and planktonic communities in contrasting environments

Compare overlap in species composition between individuals being barcoded,
species found in the plankton, and metabarcode of scrapings. Compare results
between Line Islands and Bocas del Toro, Panama. Take advantage of the Moorea
biocode database.

### 2. Temporal dynamics of community relatedness in the plankton

Compare how the taxonomic and phylogenetic composition of the planktonic
communities changes through the year.


# Approach and methods

To answer these questions, I will need to generate phylogenies representative of
the communities. These phylogenies will be generated based on the output of the
software developed in Goals 1 & 2. The code used by the software will be open
source, and development will be open to collaboration as it will be hosted on
GitHub ([https://github.com/fmichonneau](https://github.com/fmichonneau)).


### Goal 1 -- a light-weight extensible Laboratory Information Management System for barcoding projects

Data collected when assembling a barcoding library are heterogeneous. Need to
keep track of specimen information, taxonomic information associated with the
specimen, molecular laboratory work, sequence data, live photography. BOLD is an
online platform, useful to upload data before publication and to submit data to
GenBank but researchers need something more lightweight that they can use to
manage, view, and prepare their data before publishing it/uploading it to BOLD.

There is currently no open-source LIMS designed for barcoding.

Developed as an R package (the API), and with a web-application in Shiny from
the front-end. Because most researchers use some R, they will be able to
contribute, extend it, and modify it for their own needs. The same API will be
used to generate the data on the front-end, and for researchers to work with the
data they can use for their research. It is also easy to deploy. Currently,
already available as a Docker image. Data stored in a SQLite database and
simple file system. Easy to backup and manage. Proof of concept of the front-end
available at
[http://104.131.113.146/flpk-shiny/](http://104.131.113.146/flpk-shiny/) code
for the source available at https://github.com/fmichonneau/labmanager and
https://github.com/fmichonneau/flpk-shiny

Data stored according to Darwin Core fields. Easy to export in format required
by BOLD.

### Goal 2 -- improving DNA sequence classification for COI metabarcodes

I propose to modify the current workflow used in DNA sequence classification to
include a step where the DNA sequences get translated into their protein
sequence. By being less variable than DNA sequences, protein sequences will
increase the probability of finding a match in public databases, and narrow down
the taxonomic scope to which the DNA sequence can be matched. This approach will
complement existing software that provide adequate results when an exact or
close match exist in the reference database. However, because many marine taxa
are incompletely sampled, the probability for an exact match is generally low.

On a dataset of COI sequences for planktonic larvae of marine invertebrates
collected in Florida (a relatively well studied location for its marine fauna),
less than 25% have close or exact matches in the BOLD database. This number is
expected to be even lower when sequences from environmental sample will be
analyzed. When using the software SAP, a popular sequence classifier routinely
used in metabarcoding studies, only 33% of these sequences could be assigned at
the phylum level, and 18% at the species level (using GenBank). These low levels
of assignment stem from the lack of significant homolog matches when comparing
input DNA sequences and sequences available in public databases. In other words,
sequences available in reference databases are too divergent from the sample
sequences (closely related taxa have not been sequenced).

The software SAP is commonly used in metabarcoding studies because it uses two
complimentary approaches when attempting to find a match in the reference
database (while most other software use only one), and it provides a confidence
score for this assignment. First, the sequence to be matched is used to look for
homolog sequences based on sequence similarity (a BLAST search). The reference
sequences that match best and the sample sequence are aligned. This alignment
and bootstrap replicates of it are used to estimate phylogenetic trees. From
this set of trees, the frequency with which the sequence to assign clusters with
the same taxa gives a confidence value for this assignment. By using the higher
taxonomy of the reference sequences similar confidence values are given at the
genus, family, order, class and phylum level.

I will develop a new software that will modify the approach taken by
SAP. Instead of looking for homolog sequences based only on the nucleotide
sequences, I will also include homologs based on their respective protein
sequences. This approach will increase the likelihood of finding matches in the
reference database, and will allow the assignment to a higher-level taxon when
no exact match is found. I will develop this software in Python. <!-- because... -->

To test the accuracy of this approach, I will use sequences from known species
and use the software developed to attempt to identify them. To simulate the
effect of trying to identify a species not represented in the reference
database, I will ignore all the hits for this particular species and use the
next best matches. I will repeat this operation at increasingly higher taxonomic
levels (removing the genus, the family, the class, the order) to determine how
the software behaves when the sequence to be classified is taxonomically further
away from taxa available in the reference database. Because the results are
likely dependent on how many representatives of the group are included in the
reference database, the test dataset will be assembled to include representative
from diverse taxa.

Another area of improvement for software aimed at analyzing metabarcoding data
is during the assessment of the quality of the sequences. It is common to
translate DNA sequences into their protein sequence, and remove sequences that
include stop codons. Those could arise from sequencing error, or from the
amplification of pseudo-genes. This quality control step is done using the
standard genetic code. However, across the diversity of animal phyla that can be
found in metabarcoding studies, especially in the marine realm, alternative
genetic codes are encountered (e.g., echinoderms, cnidarians,
platyhelminthes). These codes translate a codon interpreted as a stop codon in
the standard code as a valid amino-acid (UGA). Thus, DNA sequences encoding for
functional COI proteins get discarded, removing systematically some taxa from
the analyses. My software will include a more careful quality control step that
will account for the presence of these alternative genetic codes.


### Goal 3 -- obtaining community phylogenies from metabarcoding data

A recent exciting research development in ecology is the realization that
understanding how closely related species that are interacting in a community
can shed light on the ecological processes at play. For instance, if species
occurring in a given environment are more closely related than would be expected
by chance, it can be hypothesized that characteristics of the environment select
for a trait that these species have (ecological filtering). On the other hand,
if species are more spaced out in the phylogeny than one would expect by chance,
it can be hypothesized that competitive exclusion precludes related species to
co-exist. Theory, mathematical models, and software to test such hypotheses have
been developed. However, advances in community phylogenetics have been hampered
by the difficulty of obtaining a phylogeny for an arbitrary set of species.

The Open Tree of Life project
([https://tree.opentreeoflife.org](https://tree.opentreeoflife.org)) provides a
fully resolved topology for all named organisms. This tree is assembled by
combining taxonomic information and synthesis from published
phylogenies. However, this global tree does not include branch lengths, and
therefore cannot be used in statistical analyses as the ones required in
community phylogenetics analyses.

The DNA barcoding gene used for animals (COI) evolves fast enough that it can
reconstruct relationship among closely related species with good
accuracy. However, its rate of evolution does not allow the accurate
reconstruction of relationships among more distantly related species.

I propose to combine information from the Open Tree of Life project and the COI
data obtained through metabarcoding to estimate the phylogeny of species
included in the meta-barcoded communities. To do so, I will use the taxon
assignments inferred from the COI sequences (using software from goal 2) to
retrieve the topology for these species from the Open Tree of Life. This
topology will be used as a constraint when estimating the phylogeny from the COI
data. To validate the accuracy of this approach, I will compare phylogenies
generated by this method with published phylogenies reconstructed solely on
multi-gene DNA alignments.

These community phylogenies will then be used to test the hypotheses outlined in
the "Research Questions" section.


# Intellectual merit

Software for managing barcoding data

Metabarcoding is transforming how biodiversity is characterized, but the tools
currently available are inadequate and do not take advantage of the all the
scientific potential from the data these projects generate. By providing
software specifically designed to analyze metabarcoding data, the proposed
research will improve our understanding of biodiversity, and the results can be
used to address long-standing questions in ecology pertaining to natural
history, community assembly, and species interactions.

By focusing on marine communities, this project will have to deal with diverse
taxonomic groups, some of which have limited information available in public
databases. These constraints will ensure that the software I will develop will
be robust to other systems focusing on a narrower taxonomic group (e.g., soil
arthropods, freshwater vertebrates) or in other group that rely on protein
coding genes for barcoding (e.g., plants).



# Timeline

# Training and Broader Impacts

Organize Data Carpentry/Software Carpentry workshop on campus. Increase
computational litteracy on campus, increase use of computing resources on
campus. Grow community of users who collaborate on solving computing problems.

Collaborations with other fellows

\pagebreak

# References

<!-- First, the sequences get translated according to the candidate codon -->
<!-- tables given the taxa targeted by the analysis. Codon tables that lead to stop -->
<!-- codons are not retained. The protein sequence is then matched against a database -->
<!-- of representative sequences for COI across of the tree of life. This steps -->
<!-- allows the assignment of this unknown sequence to a phylum. If the inferred -->
<!-- phylum is compatible with one of genetic codes inferred, the phylum and the -->
<!-- genetic codes are retained. -->


<!-- Slow process because sequences have to be queried over all of GenBank which is -->
<!-- huge and not necessarily relevant. Improve speed by providing a set of sequences -->
<!-- from organisms most likely to occur in the sample, and for those that don't -->
<!-- match, then do a BLAST search, possibly limiting to a phylum based on the -->
<!-- sequenc -->

<!-- Paragraph on utility and accuracy of barcoding for animals. When dataset is -->
<!-- looked under increased scrutinity, usually very low percentage of -->
<!-- missassignment. Here givne the goal, it wouldn't be too big of a deal. Narrowing -->
<!-- an unidentified sequence to a few species possibilities would be better than -->
<!-- what is currently possible. -->


<!--  Species description of marine -->
<!-- organisms has typically been done on preserved specimens whose coloration has -->
<!-- been washed off by preservatives used for fixation, and with little information -->
<!-- about their live appearance or their habits. The incorporation of molecular data -->
<!-- into taxonomy has unraveled high levels of unrecognized diversity with many -->
<!-- cryptic species. Hence, species thought to be widespread appeared in the light -->
<!-- of molecular data to form mosaics of species complexes. Under scrutiny, these -->
<!-- newly recognized species differed in their coloration and habitat, corroborating -->
<!-- the results from molecular data. -->


<!-- DNA barcoding has changed how marine biodiversity is studied, with large, -->
<!-- all-taxa inventories with vouchers stored in museums, images of the specimens, -->
<!-- and sequence data from COI. Besides improving the documentation of the number of -->
<!-- species, barcoding data has also helped unravel the complex life cycles of many -->
<!-- organisms, connecting the larval stage to the adult, or been used to assign -->
<!-- species to the animal parts found in the stomachs of fish to reconstruct their -->
<!-- diet. Biodiversity science is undergoing another transformation with the advent -->
<!-- of metabarcoding. Instead of sequencing individuals, metabarcoding takes -->
<!-- advantage of the massive parellel sequencing that next generation sequencing -->
<!-- platforms provide. Contrary to metagenomics, metabarcoding relies on amplicon -->
<!-- sequencing where the DNA from an environmental sample is extracted before the -->
<!-- genetic marker of interest is amplified and sequenced. -->
