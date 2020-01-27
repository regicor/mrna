FROM r-base:3.6.1
    RUN apt-get update && apt-get install -y libcurl4-gnutls-dev libxml2-dev libssl-dev libmariadb-client-lgpl-dev \
        ibglib2.0-dev libcairo2-dev ghostscript && apt-get clean && \
        rm -rf /var/lib/apt/lists/*
    RUN apt-get update && apt-get install libxt-dev && \
         rm -rf /var/lib/apt/lists/*
    RUN Rscript -e 'install.packages("devtools", dependencies = TRUE)'
    RUN Rscript -e 'library(devtools); install_github("brentp/celltypes450")'  
    RUN Rscriot -e 'install.packages("BiocManager")'
    RUN Rscriot -e 'BiocManager::install() '
    RUN Rscript -e BiocManager::install(c("sva","edgeR","limma","oligo","oligoClasses","BiocGenerics","ggplot2","parallel","Biobase","Biostrings","S4Vectors","stats4","IRanges","XVector")'
    
