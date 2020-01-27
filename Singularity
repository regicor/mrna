Bootstrap:docker  
From:ubuntu:16.04

%post
    # Installing ubuntu dependencies
    apt-get update
    apt-get install -y libcurl4-gnutls-dev libxml2-dev libssl-dev libmariadb-client-lgpl-dev ibglib2.0-dev libcairo2-dev \
    ghostscript libxt-dev r-base
    apt-get clean
    rm -rf /var/lib/apt/lists/*
    # Installing R packages
    Rscript -e 'install.packages("devtools", dependencies = TRUE)'
    Rscript -e 'library(devtools); install_github("brentp/celltypes450")'  
    Rscriot -e 'install.packages("BiocManager")'
    Rscriot -e 'BiocManager::install()'
    Rscript -e BiocManager::install(c("sva","edgeR","limma","oligo","oligoClasses","BiocGenerics","ggplot2","parallel","Biobase","Biostrings","S4Vectors","stats4","IRanges","XVector")'
    
