install.packages("BiocManager", repos="https://cran.rstudio.com")

install.packages(c('here', 'ggsci', 'ggthemes', 'ggpubr', 'ggsignif',
		   'ggforce', 'ggupset', 'patchwork', 'ggrepel',
		   'extrafont', 'viridis', 'rjson', 'ggpmisc', 'import'))

BiocManager::install(version="3.16", update=TRUE, ask=FALSE)

BiocManager::install(c('devtools', 'AnVIL', 'msigdbr', 'fgsea',
		       'tximeta', 'SummarizedExperiment', 'HDF5Array',
		       'DESeq2', 'ComplexHeatmap', 'survival', 'survminer',
		       'rGREAT', 'GenomicRanges', 'BSgenome.Hsapiens.UCSC.hg38',
		       'BSgenome'))

# RERWIP -- install r memes
remotes::install_github("snystrom/cmdfun")
remotes::install_cran("BiocManager")
remotes::install_github("snystrom/memes", dependencies = TRUE)

