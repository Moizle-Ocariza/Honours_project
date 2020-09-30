## Written by M. Ocariza, 2020

setwd("~/Documents/University/UNIVERSITY ACADEMIC/Fourth Year/Project/Bioinformatics/Results/Tidying up /Cut motifs/")

directory <- "~/Documents/University/UNIVERSITY ACADEMIC/
FourthYear/Project/Bioinformatics/Results/Tidying up /Cut motifs/"
file_list <- list.files(path = ".", recursive = TRUE, pattern = "\\.txt$", full.names = TRUE)

View(file_list)
##install.packages("data.table")
library(data.table)
##update.packages("data.table")


motifs <- lapply(file_list, 
                 read.csv, 
                 header=TRUE, sep="\t")

class(motifs)
View(motifs)


# read in each .txt file in motifs and rbind them into a data frame called motifs_df
motifs_df <- rbindlist(motifs, use.names = TRUE, fill = TRUE)
View(motifs_df)

##install.packages("tidyverse")
library(tidyverse)


#EXTRACT ALL THE UNIQUE MOTIFS FROM MOTIFS_DF

#unique_motifs <- unique(motifs_df)
#unique_motifs


#EXTRACT ALL THE duplicated MOTIFS FROM MOTIFS_DF

duplicated_motifs <- motifs_df[duplicated(motifs_df$Locus, motifs_df$matched_sequence) | duplicated(motifs_df$Locus, motifs_df$matched_sequence,
                                                                               fromLast = TRUE),]

#Extract unique copies of each duplicate
unique_copy <- unique(duplicated_motifs)
unique_copy
#Export unique copies
unique_copy_exp <- select(unique_copy, 1,4)
library(seqRFLP)
dataframe2fas(unique_copy_exp, file = "unique_copy_of_motifs.fasta")

#Make a dataframe with locus and matched sequence as columns
#install.packages("dplyr")
library(dplyr)
unique_motifs_locus_matched_seq <- select(unique_motifs, 1,4)
View(unique_motifs_locus_matched_seq)

#Convert to fastsa
##install.packages("seqRFLP")
library(seqRFLP)
dataframe2fas(unique_motifs_locus_matched_seq, file = "unique_motifs_locus_matched_seq.fasta")


##SUBSET THE UNIQUE COPIES OF MOTIFS INTO IR1 AND IR2
IR1_v1 <- subset(unique_copy, grepl("^TCAAA",unique_copy$matched_sequence))
IR1_v1
IR1_v2 <- subset(unique_copy, grepl("TGA$",unique_copy$matched_sequence))
IR1_v2
              
IR2_v1 <- subset(unique_copy, grepl("^TCGA",unique_copy$matched_sequence))
IR2_v1
IR2_v2 <- subset(unique_copy, grepl("CGA$",unique_copy$matched_sequence))
IR2_v2

#combine the subsets
IR1 <- merge(IR1_v1, IR1_v2, all=TRUE, sort=TRUE)
IR1


IR2 <- merge(IR2_v1, IR2_v2, all=TRUE, sort = TRUE)
IR2


#convert to fasta
IR1_fasta <- select(IR1, 1,4)
IR2_fasta <- select(IR2, 1,4)
library(seqRFLP)
dataframe2fas(IR1_fasta, file = "IR1.fasta")
dataframe2fas(IR2_fasta, file = "IR2.fasta")
