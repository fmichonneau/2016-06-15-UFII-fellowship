---
author:
title:
geometry: margin=1in
papersize: letter
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

# Introduction

<!-- start with marine but then talk about all organisms -->

High-Throughput DNA sequencing technologies are poised to revolutionize how
biodiversity is studied. The _en masse_ sequencing of all species found in a
community replaces the time-consuming steps of isolating and recognizing each
species found in an environmental sample. The challenge now rests on developing
informatic tools that can identify the species from which these DNA sequences
come from. The goal of the research described in this proposal is to develop new
tools that facilitate the identification of these sequences.

Estimates for the number of species found in the oceans vary by orders of
magnitude. This uncertainty stems from the difficulty of sampling the diversity
of habitats hidden under the ocean's surface, and our relative poor taxonomic
knowledge for most groups. The use of molecular data to study marine
biodiversity has improved our understanding of how species are distributed in
space, how they interact, how they are related to each others, and how to
distinguish them. Since the early 2000's, DNA barcoding has been widely adopted
by the community to facilitate future identification, and uncover species
complexes. Almost 5 milions DNA barcodes are publicly available representing
diverse taxonomic groups, from all latitudes, covering both marine and
terrestrial habitats. This dataset is the most comprehensive for which the same
gene has been sequenced and is associated with curated taxonomic information. To
take advantage of this data, metabarcoding targeting COI is emerging as the
approach of choice to characterize marine communities. However, marine
biodiversity is still poorly characterized, and many taxa have not yet been
sequenced for COI. The challenge adressed by this research is to find the most
likely taxon for a sequence given the species that have been sequenced for COI.

<!-- if I include community phylogenetic give some background on it -->

<!-- need to talk on how much better it is to assemble local database of COI -->
<!-- sequences to increase chances of matching -->


Current software used to assign taxon names to DNA sequences generated with HTS
are ill-suited for animal communities. These software were originally designed
to analyze sequences originating from microbial communities. Studies using
"amplicon sequencing" on bacteria typically target the genetic marker 16S. It is
known to provide good resolution at low taxonomic scale and is easy to amplify
across a large diversity of species. Several databases of 16S sequences for
bacteria have been assembled against which researchers can match their
sequences. Because 16S in a non protein-coding gene, it evolves differently from
COI, and the algorithms used to match the 16S sequences to the reference
database do not take advantage of the protein-coding nature of COI. Another
approach with bacterial communities, metagenomics, seeks to match genomic DNA
from environmental samples to sequenced genomes. This approach is still not
applicable across diverse groups of animals given that genomes are larger than
in bacteria, and many taxon do not have genomes available.

I propose to develop new informatic tools and open-source software to assign
taxon names to protein-coding DNA sequences generated in metabarcoding
studies. I will test the performance and accuracy of these tools on simulated
datasets, and on metabarcoding datasets generated from marine communities. This
research is interdisciplinary and integrates biodiversity informatics,
evolutionary biology, ecology, and statistics.

Over the course of this project, I will work on three goals:

- **Goal 1:** develop a web-based tool to manage the heterogeneous but linked
  data generated in biodiversity surveys.
- **Goal 2:** improve the assignment of taxonomic information to DNA sequences
  generated during metabarcoding surveys.
- **Goal 3:** combine sequence data and taxonomic information to generate
  community phylogenies based on the sequences obtained from metabarcoding.


![Comparison of workflows for barcoding and metabarcoding. With barcoding (A), tissues from specimens are used to isolate their DNA (gray strand). The barcoding gene (colored dots) is amplified by PCR, and an unique sequence for each specimen is obtained using Sanger sequencing. The sequences obtained can be used to build a reference library, where sequences are associated with a voucher specimen. With metabarcoding (B), DNA from an environmental sample (e.g., sea water containing planktonic larvae) is isolated. This solution contains DNA from multiple species, and the barcoding gene is amplified for the species. An High-Throughput Sequencing (HTS) platform (e.g., Illumina) is used to sequence all the amplified fragments of DNA (the amplicons). These sequences are analysed bioinformatically: the sequences are matched against a reference database to identify the species contained in the environmental sample.](figures/drawing.pdf)

Box 1 -- Definitions and drawings

Barcoding: .... In the early 2000s, large-scale biodiversity projects have been
developed to coordinate and standardize information collected during
biodiversity. Notably, a portion of the cytochrome oxidase I (COI, a
mitochondrial gene) has emerged as a universal marker to document genetic
diversity in animals. For most taxonomic group, COI has low intra-specific but
high inter-specific variation allowing species delineation and identification.
A public database has been developed to store these DNA sequences alongside with
voucher information (in which natural history museum is the specimen from which
the DNA comes from held?), photography of the live specimens, and data quality
control on the sequence data. Currently, this database holds almost 5 million
sequences from specimens collected worldwide, and from a large diversity of
taxonomic groups.

Metagenomics: .... Metagenomics is well suited for microbial communities and
allows to assess both the functional aspect of the community what are the genes
expressed in the environment?), and the diversity of the community (how many
species are in the community? what are the species found in the community?).

Metabarcoding: .....



# Research questions

Global and local threats (e.g., ocean acidification, increased temperatures,
pollution, overfishing) require better characterization and monitoring of marine
communities, so we can evaluate and understand their impact on biodiversity and
on how communities are assembled. Metabarcoding makes it possible to estimate
the number of species occurring in the plankton, in the gut of fish (to infer
their diet), or in marine sediments. Identifying species in such communities
based on morphology is time consuming, and often imperfect, as identifications
must be done on character-poor organisms (e.g., larvae in the plankton) or on
fragments (e.g., a shrimp leg in a fish gut).

Metabarcoding is still a new technology whose limitations need to be better
defined, but its potential to help us understand not only how many species are
found in a given community, but also identity the species will imporove our
understanding on how these communities are assembled, and in turn gain insights
into basic information on the natural history of taxa for which no data
currently exist. <!-- give examples: are closely related taxa reproduce at the -->
<!-- same time of the year; what is the effect of the lunar cycle/seasons on the
reproduction; how do predators target their preys; how does the phylogenetic -->
<!-- composition of a community changes along environmental gradients --->

### 1. Comparison of metabarcoding from benthic and planktonic communities in contrasting environments

Compare overlap in species composition between individuals being barcoded,
species found in the plankton, and metabarcode of scrapings. Compare results
between Line Islands and Bocas del Toro, Panama.

### 2. Temporal dynamics of community relatedness in the plankton

Compare how the taxonomic and phylogenetic composition of the planktonic
communities changes through the year.


# Approach and methods

To answer these questions, I will need to generate phylogenies representative of
the communities. These phylogenies will be generated based on the output of the
softwares developed in Goals 1 & 2.

### Goal 1 -- an light-weight extensible Laboratory Information Management System for barcoding projects

Data collected when assembling a barcoding library are heterogenous in
nature. Need to keep track of specimen information, taxonomic information
associated with the specimen, molecular laboratory work, sequence data, live
photography. BOLD is an online platform, useful to upload data before
publication and to submit data to genbank but researchers need something more
lightweight that they can use to manage, view, and prepare their data before
publishing it/uploading it to BOLD.

There is currently no open-source LIMS designed for barcoding.

Developed as an R package (the API), and with a web-application in Shiny from
the front-end. Because most researchers use some R, they will be able to
contribute, extend it, and modify it for their own needs. The same API will be
used to generate the data on the front-end, and for researchers to work with the
data they can use for their research. It is also easy to deploy. Currently,
already available as a Docker image. Data storred in a SQLite database and
simple file system. Easy to backup and manage. Proof of concept of the front-end
avaialble at http://104.131.113.146/flpk-shiny/.

Data stored according to Darwin Core fields. Easy to export in format required
by BOLD.

### Goal 2 -- improving DNA sequence classification for COI metabarcodes

Preliminary results where larvae of marine invertebrates are individually
sequenced for COI (not environmental), less than 25% can be found in public
databases. This number is expected to be even lower when sequences based on
environmental sample. When using a SAP, a popular sequence classifier, routinely
used in metabarcoding studies, only 33% could be assigned at the phylum level,
and 18% at the species level. These low levels of assignment stem from the lack
of significant homolog matches when comparing input DNA sequences and sequences
available in public databases. In other words, sequences available in public
databases are too divergent from the sample sequences (closely related taxa have
not been sequenced).

I propose to modify the current workflow used in DNA sequence assignment to
include a step where the translated protein sequences are matched to the
translated DNA sequences from the public databases. By being less variable than
DNA sequences, protein sequences will increase the probability of finding a
match in public databases, and narrow down the taxonomic scope to which the DNA
sequence can be matched.

During data quality control of sequences generated by a metabarcoding study, it
is common to translate DNA sequences into their respective protein sequence, and
remove sequences that include stop codons. Those could arise from sequencing
error, or from the amplification of pseudo-genes. This quality control step is
done using the standard genetic code. However, across the diversity of animal
phyla that can be found in metabarcoding studies, especially in the marine
realm, alternative genetic codes are encountered (e.g., echinoderms, cnidarians,
platyhelminthes). These codes translate a codon interpreted as a stop codon in
the standard code as a valid amino-acid. Thus, DNA sequences encoding for a
functional COI protein get discarded during this quality control stop, removing
systematically some taxa from the analyses.

We propose to develop a more robust approach that also accounts for the presence
of these alternative genetic codes. First, the sequences get translated
according to the candidate codon tables given the taxa targeted by the
analysis. Codon tables that lead to stop codons are not retained. The protein
sequence is then matched against a database of representative sequences for COI
across of the tree of life. This steps allows the assignment of this unknown
sequence to a phylum. If the inferred phylum is compatible with one of genetic
codes inferred, the phylum and the genetic codes are retained.

We propose to modify the approach used by SAP [@Munch2008] to include a step
where the sequences to match are initially matched

### Goal 3 -- obtain


Insist on important need for such tools in marine surveys.

Description of current workflow for analysis

Several efforts to

Problem with public sequences databases is there is a high number of
misidentified sequences.

Workflow:

- filter raw reads
- remove sequences with low counts
- detect chimera
- translate DNA sequences using all codon tables
- classify to candidate phyla (or even lowest taxonomic group)
- cluster/classify/BLAST search within this set of species


# Intellectual merit

# Risks and challenges

# Timeline

# Training

Organize Data Carpentry/Software Carpentry workshop on campus. Increase
computational litteracy on campus, increase use of computing resources on
campus. Grow community of users who collaborate on solving computing problems.

# Collaborations with other fellows

\pagebreak

# References


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
