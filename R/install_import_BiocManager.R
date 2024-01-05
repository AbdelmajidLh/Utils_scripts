# Load BiocManager
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

# Load or install a package using BiocManager
if (!requireNamespace("microbiome", quietly = TRUE)) {
  BiocManager::install("microbiome")
}

# Now you can load the package
library(microbiome)
