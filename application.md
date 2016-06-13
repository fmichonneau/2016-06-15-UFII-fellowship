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
come. The goal of the research described in this proposal is to develop new
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

Specifically, over the course of this project, I will work on three goals:

- **Goal 1:** develop a web-based tool to manage the heterogeneous but linked
  data generated in biodiversity surveys.
- **Goal 2:** improve the assignment of taxonomic information to DNA sequences
  generated during metabarcoding surveys.
- **Goal 3:** combine sequence data and taxonomic information to generate
  community phylogenies based on the sequences obtained from metabarcoding.

---------------------------------------------------------------------------
Box 1 -- Definitions

Barcoding: ....

Metagenomics: ....

Metabarcoding: .....

---------------------------------------------------------------------------


# Research questions




Metagenomics is well suited for
microbial communities and allows to assess both the functional aspect of the
community what are the genes expressed in the environment?), and the diversity
of the community (how many species are in the community? what are the species
found in the community?). When the goal is to identify species found in a given
environment, metabarcoding is often better suited for animal communities, as
genomes are larger, and generally not as well characterized as bacteria. In
addition, for animals, the possibility of an exact match to an existing sequence
in the COI database makes metabarcoding focused on COI appealing.


Global and local threats (e.g., ocean acidification, increased temperatures,
pollution, overfishing) require better characterization and monitoring of marine
communities, so we can evaluate and understand their impacts.




has emerged as a promising tool to characterize marine communities by sequencing
_en masse_ all species occurring in the environment. These technologies make it
possible to estimate the number of species occurring in the plankton, in the gut
of fish (to infer their diet), or in marine sediments. Identifying species in
such communities based on morphology is time consuming, and often imperfect, as
identifications must be done on character-poor organisms (e.g., larvae in the
plankton) or on fragments (e.g., a shrimp leg in a fish gut).



 Species description of marine
organisms has typically been done on preserved specimens whose coloration has
been washed off by preservatives used for fixation, and with little information
about their live appearance or their habits. The incorporation of molecular data
into taxonomy has unraveled high levels of unrecognized diversity with many
cryptic species. Hence, species thought to be widespread appeared in the light
of molecular data to form mosaics of species complexes. Under scrutiny, these
newly recognized species differed in their coloration and habitat, corroborating
the results from molecular data.

In the early 2000s, large-scale biodiversity projects have been developed to
coordinate and standardize information collected during biodiversity. Notably, a
portion of the cytochrome oxidase I (COI, a mitochondrial gene) has emerged as a
universal marker to document genetic diversity in animals. For most taxonomic
group, COI has low intra-specific but high inter-specific variation allowing
species delineation and identification.  A public database has been developed to
store these DNA sequences alongside with voucher information (in which natural
history museum is the specimen from which the DNA comes from held?), photography
of the live specimens, and data quality control on the sequence data. Currently,
this database holds almost 5 million sequences from specimens collected
worldwide, and from a large diversity of taxonomic groups. In addition, GenBank
holds <!-- need to talk about barcoding -->
<!-- here -->

DNA barcoding has changed how marine biodiversity is studied, with large,
all-taxa inventories with vouchers stored in museums, images of the specimens,
and sequence data from COI. Besides improving the documentation of the number of
species, barcoding data has also helped unravel the complex life cycles of many
organisms, connecting the larval stage to the adult, or been used to assign
species to the animal parts found in the stomachs of fish to reconstruct their
diet. Biodiversity science is undergoing another transformation with the advent
of metabarcoding. Instead of sequencing individuals, metabarcoding takes
advantage of the massive parellel sequencing that next generation sequencing
platforms provide. Contrary to metagenomics, metabarcoding relies on amplicon
sequencing where the DNA from an environmental sample is extracted before the
genetic marker of interest is amplified and sequenced.


Metabarcoding is still a new technology whose limitations need to be better
understood, but its potential to improve our understanding of biodiversity makes
it appealing. Being able to identify the majority of species occurring in an
environmental sample will for instance bring insights into dispersal potential,
food webs, environmental impact and monitoring, and fine scale patterns of
diversity. Currently, software used to analyze sequences generated during
metabarcoding studies were originally developed to analyze bacterial
communities, and are not well-suited for the specificity of the sequences
generated by metabarcoding on animal communities, especially when using COI.

Preliminary results where larvae of marine invertebrates are individually
sequenced for COI (not environmental), less than 25% can be found in public
databases. This number is expected to be even lower when sequences based on
environmental sample. When using a SAP, a popular sequence classifier, routinely
used in metabarcoding studies, only 33% could be assigned at the phylum level,
and 18% at the species level. This low level of assignment stems from the lack
of significant homolog matches when comparing input DNA sequences and sequences
available in public databases. In other words, sequences available in public
databases are too divergent from the sample sequences (closely related taxa have
not been sequenced).

<!-- better job at explaining difference between metabarcoding itself, and COI -->
<!-- based metabarcoding -->

<!-- need to explain why protein sequences are less variable than DNA sequences -->

We propose to modify the current workflow used in DNA sequence assignment to
include a step where the protein sequences are being compared and matched. By
being less variable than DNA sequences, using protein sequences will increase
the probability of finding a match in public databases, and narrow down the
taxonomic scope to which the DNA sequence can be matched.

During data quality control of sequences generated by a metabarcoding study, it
is common to translate DNA sequences into their respective protein sequence, and
remove sequences that include stop codons. Those could arise from sequencing
error, or from the amplification of pseudo-genes. This quality control step is
done using the standard genetic code to translate the DNA sequence into the
protein sequence. However, across the diversity of animal phyla that can be
found in metabarcoding studies, especially in the marine realm (e.g.,
echinoderms, cnidarians, platyhelminthes), alternative genetic codes are
encountered. These codes translate a codon interpreted as a stop codon in the
standard code as a valid amino-acid. Thus, DNA sequences encoding for a
functional COI protein get discarded during this quality control stop, removing
systematically some taxa from the analyses.

## Approach

### Dealing with alternative translation codes

Typically, when analyzing data generated during a metabarcoding study, the DNA
sequences get translated into their amino-acid equivalent and get checked for
the presence of frame shifts and stop codons. This steps ensures that downstream
analyses will use the functional copy of the COI sequence, and do not include
spurious sequences. Typically, this steps is done assuming that the organisms
from which these sequences come from use the standard genetic code. However,
many invertebrate groups, including some of the most common marine organisms,
use alternative genetic codes.

We propose to develop a more robust approach that also accounts for the presence
of these alternative genetic codes. First, the sequences get translated
according to the candidate codon tables given the taxa targeted by the
analysis. Codon tables that lead to stop codons are not retained. The protein
sequence is then matched against a database of representative sequences for COI
across of the tree of life. This steps allows the assignment of this unknown
sequence to a phylum. If the inferred phylum is compatible with one of genetic
codes inferred, the phylum and the genetic codes are retained.


### Using protein sequence homology

We propose to modify the approach used by SAP [@Munch2008] to include a step
where the sequences to match are initially matched



Current methods for assigning taxon labels to query sequences based on database
sequences rely on (1) sequence similarity search, (2) sequence composition and
features methods, (3) phylogenetic methods.

Because the COI gene encodes for a protein, the translation of its DNA sequence

Current software for analyzing results from DNA sequences collected in the
environment have focused on estimating the number of species, and trying to
match these sequences to sequences deposited in public databases.


Paragraph on utility and accuracy of barcoding for animals. When dataset is
looked under increased scrutinity, usually very low percentage of
missassignment. Here givne the goal, it wouldn't be too big of a deal. Narrowing
an unidentified sequence to a few species possibilities would be better than
what is currently possible.

Slow process because sequences have to be queried over all of GenBank which is
huge and not necessarily relevant. Improve speed by providing a set of sequences
from organisms most likely to occur in the sample, and for those that don't
match, then do a BLAST search, possibly limiting to a phylum based on the
sequence.

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

# Datasets available to test the method

# Personnel

# Application to other disciplines

# Risks and challenges

# Timeline

# Training

Organize Data Carpentry/Software Carpentry workshop on campus. Increase
computational litteracy on campus, increase use of computing resources on
campus. Grow community of users who collaborate on solving computing problems.

# Collaborations with other fellows

\pagebreak

# References
