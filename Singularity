Bootstrap:docker  
From:ubuntu:18.04

%post
    # Installing ubuntu dependencies
    apt-get update
    apt-get install -y libcurl4-gnutls-dev libxml2-dev libssl-dev libmariadb-client-lgpl-dev ibglib2.0-dev libcairo2-dev \
    ghostscript libxt-dev r-base=3.6.1
    apt-get clean
    rm -rf /var/lib/apt/lists/*
    # Installing R packages
    Rscript -e 'r = getOption("repos"); r["CRAN"] = "https://cran.rstudio.com/"; options(repos = r); install.packages("BiocManager")'
    Rscript -e 'r = getOption("repos"); r["CRAN"] = "https://cran.rstudio.com/"; options(repos = r); BiocManager::install(c("sva","edgeR","limma","oligo","oligoClasses","BiocGenerics","ggplot2","parallel","Biobase","Biostrings","S4Vectors","stats4","IRanges","XVector"))'
    Rscript -e 'install.packages("devtools", dependencies = TRUE, repos = "https://cran.rstudio.com"); library(devtools); install_github("brentp/celltypes450")'
    Rscript -e 'install.packages("BiocManager", repos = "https://cran.rstudio.com/")'
    
