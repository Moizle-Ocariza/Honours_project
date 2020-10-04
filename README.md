# Moizle Ocariza, BSc Biochemistry (Honours)

#### This repository contains a portion Moizle Ocariza's raw results, sequences and R scripts used in completing her BSc Honours Thesis at the University of Otago, Dunedin New Zealand. 


## Supplementary data

###  Cloning _mexCD_ into pEX18Tc

```mexCD-KO fragment 1 sequence validation``` contains the forward and reverse sequences of the putative pEX18Tc::mexCD-KO fragment 1 plasmid.

```Putative mexCD-KO plasmid sequence validation``` contains the forward and reverse sequences of the putative KO plasmid sent for validation. Primers used were the KO screening primers.


### Sequences
#### Amino acid sequences
```NfxB_relatives.fasta``` contains the amino acid sequences of the proteins found homologous to _P. aeruginosa_. The amino acid sequences were from Pseudomonas Genome Database.
```Pectobacterium atrosepticum``` contains this species' NfxB amino acid sequence.

#### Upstream sequences

```gene_species_upstream-NfxB-related.fasta``` contains the upstream sequences of the genes encoding the NfxB homologues found.

```16S``` and ```23S``` sequences were both taken from IMG and used for phylogenetic tree building.

#### Whole Genome Sequences
```Assembly``` contains the whole genome sequences of the clinical isolates used in this study. These WGS were assembled in the Lamont Laboratory.


### Motif Scanning

```Shuffled PAO1 intergenic region``` contains the shuffled sequences used as a control for PatScan.

```Shuffled_PAO1_WGS.fa``` contains a shuffled PAO1 whole genome sequence.

```PatScan_Raw_Results``` contains the raw motifs found using the different  query patterns.

```FIMO_intergenic_scan``` contains the raw motifs found using the different query patterns.

```Motifs from homologues``` contains raw motifs found in the Pseudomonas species.

```Motifs.R``` contains the script used to process the raw motifs found using RSAT, SFM, and FIMO. Files required are stored in the ```Rscript files``` folder.

```FIMO intergenic scan``` and ```PatScan raw results``` contain the inverted repeats identified by FIMO and PatScan in the PAO1 intergenic regions. These are the raw results.

```Putative binding sites full``` contains an Excel document with all the inverted repeats identified by FIMO and PatScan that had p- and q-values equal or less than to 1E-4 and mexCD region, and those that flank genes involve in efflux and regulation.

### Phylogenetic trees building

```16S and 23S Tree Data``` contains the tree files generated in Clustal Omega. 
