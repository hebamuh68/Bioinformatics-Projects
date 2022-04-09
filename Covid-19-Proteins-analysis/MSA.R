if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")

BiocManager::install("msa")
library("msa")

mySequenceFile <-file.choose(file.choose())
mySequences <- readAAStringSet(mySequenceFile)
mySequences

## ----doAlignment-----------------------------------------------
myFirstAlignment <- msa(mySequences)
myFirstAlignment

## ----showWholeWidth--------------------------------------------
sink("align.txt")

print(myFirstAlignment, show="complete")
sink()

#--------------------------visualise Alignment-------------------
BiocManager::install("DECIPHER")
require(DECIPHER)
require(Biostrings)

AlignmentFile <- readAAStringSet(filepath = "coronaPro.fasta", 
                                           format = "fasta")

Proteins_aligned <- AlignSeqs(AlignmentFile)
BrowseSeqs(Proteins_aligned)


##---------------create PDF file according to some custom settings---------
tmpFile <- tempfile(pattern="msa", tmpdir="/home/heba/bio", fileext=".pdf")
tmpFile

msaPrettyPrint(Multiple_Alignment, output="tex", showNames="none",
               showLogo="none", askForOverwrite=FALSE, verbose=FALSE)
texi2pdf("Multiple_Alignment.tex", clean=TRUE)

## ----IntegratePDF2---------------------------------------------
tools<-install.packages("uniprot")
library(UniprotR)

Accession <- GetAccessionList(file.choose())

Function <- GetProteinFunction(Accession, "E:/project R")

#--------------visualization-------------------------------
install.packages("xlsx")
library("xlsx")


scoreList = c()
seqNames = c(1:15)
for(i in 1:iterations)
{
  alm <- pairwiseAlignment(AlignmentFile[[i]], AlignmentFile[[i+1]], substitutionMatrix=BLOSUM100, gapOpening=0, gapExtension=-5)
  scoreList[i] = score(alm)
}

#--------------------------------------Scatter------------------------
png(file="scatter.png",
    width=600, height=350)

plot(seqNames, scoreList)
dev.off()

#--------------------------------------boxPlot------------------------
png(file="Boxplot.png",
    width=600, height=350)

boxplot(seqNames, scoreList)
dev.off()
