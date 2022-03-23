install.packages("BiocManager", repos="https://cran.rstudio.com")

install.packages(c('here', 'ggsci', 'ggthemes', 'ggpubr', 'ggsignif',
		   'ggforce', 'ggupset', 'patchwork', 'ggrepel',
		   'extrafont', 'viridis', 'rjson', 'ggpmisc', 'import'))

BiocManager::install(version="3.15", update=TRUE, ask=FALSE)

BiocManager::install(c('devtools', 'AnVIL', 'msigdbr', 'fgsea',
		       'tximeta', 'summarizedExperiment', 'HDF5Array',
		       'DESeq2', 'ComplexHeatmap', 'survival', 'survminer',
		       'rGREAT', 'GenomicRanges', 'BSgenome.Hsapiens.UCSC.hg38',
		       'BSgenome'))

# RERWIP -- install r memes
