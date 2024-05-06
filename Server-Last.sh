#!/bin/bash

# Update package lists and install R
sudo apt-get install wget
sudo apt-get update
sudo apt-get install -y r-base

# Download from GitHub 
wget https://github.com/Sisi383/INTEND/releases/download/Public/1-Download_Data.R

wget https://github.com/Sisi383/INTEND/releases/download/Public/2-RNA_Pre.R

wget https://github.com/Sisi383/INTEND/releases/download/Public/3-Methylation_Pre.R

wget https://github.com/Sisi383/INTEND/releases/download/Public/4-Binding.R

wget https://github.com/Sisi383/INTEND/releases/download/Public/5-INTEND.R

wget https://github.com/Sisi383/INTEND/releases/download/Public/BRCA_Methylation.rda

wget https://github.com/Sisi383/INTEND/releases/download/Public/hg19.refGene.gtf

wget https://github.com/Sisi383/INTEND/releases/download/Public/HumanMethylation450_15017482_v1-2.csv

# Execute R scripts 
sudo Rscript 1-Download_Data.R
sudo Rscript 2-RNA_Pre.R
sudo Rscript 3-Methylation_Pre.R
sudo Rscript 4-Binding.R
sudo Rscript 5-INTEND.R


echo "Done"
