# Project: Learning how to analyze single-cell RNA-seq data with Seurat
# Kyle Kroll
# April, 2021
# Following the guide found at: https://satijalab.org/seurat/articles/pbmc3k_tutorial.html

# Required libraries
library(dplyr)
library(Seurat)
library(patchwork)

# Load in the provided PBMC data of 2700 PBMC run on 10X system
pbmc.data <- Read10X(data.dir = "./filtered_gene_bc_matrices/hg19/")

# Initialize Seurat object with the raw, non-normalized data
pbmc <- CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells = 3, min.features = 200)
pbmc
