% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map.snps.to.genes.r
\name{map.snps.to.genes}
\alias{map.snps.to.genes}
\title{Map SNPs to their nearby genes}
\usage{
map.snps.to.genes(gwas_sumstats_path, upstream_kb = 10, downstream_kb = 1.5,
  N = NULL, genome_ref_path)
}
\arguments{
\item{upstream_kb}{How many kb upstream of the gene should SNPs be included?}

\item{downstream_kb}{How many kb downstream of the gene should SNPs be included?}

\item{N}{What is the N number for this GWAS? That is cases+controls}

\item{genome_ref_path}{Path to the folder containing the 1000 genomes .bed files (which can be downloaded from https://ctg.cncr.nl/software/MAGMA/ref_data/g1000_eur.zip)}

\item{path}{Filepath of the summary statistics file}
}
\value{
Filepath for the genes.out file
}
\description{
Make two external calls to MAGMA. First use it to annotate SNPs onto their neighbouring genes. Second, use it to calculate the gene level trait association.
}
\examples{
genesOutPath = map.snps.to.genes(gwas_sumstats_path)

}
