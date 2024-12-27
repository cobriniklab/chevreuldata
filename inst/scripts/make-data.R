# A script describing the steps involved in making the data object(s). This
# includes where the original data were downloaded from, pre-processing, and
# how the final R object was made. Include a description of any steps performed
# outside of R with third party software. Output of the script should be files
# on disk ready to be pushed to S3. If data are to be hosted on a personal web
# site instead of S3, this file should explain any manipulation of the data
# prior to hosting on the web site. For data hosted on a public web site with
# no prior manipulation this file is not needed.

# Human fetal retinae were dissected and dissociated.Single cells were FACS-isolated then reverse transcribed and amplified using the SMART-Seq V4 Ultra Low Input RNA Kit. Retinae were sequenced on the Illumina NextSeq 500 (2×75) and Illumina HiSeq 4000.

# Adapter sequences were removed using trimgalore, aligned with HISAT2, quantified with StringTie, yielding cell-by-transcript and cell-by-gene count matrices annotated according to Ensembl build 87. All analyses can be reproduced using a snakemake workflow accessible at https://github.com/cobriniklab/ARMOR. Raw data and count matrices for gene symbols and transcripts is available at GSE207802

# Processing was performed using the clustering and integration workflows in the chevreul R package (https://github.com/cobriniklab/chevreul). Common analyses are available using the Seurat and SingleCellExperiment formats. To exclude technical effects between distinct tissue isolation and sequencing batches, expression counts from seven sequencing batches were integrated using Seurat’s integration workflow.

# chevreul provides a single command to construct a single cell object, filter genes by minimum expression and ubiquity, normalize and scale expression

## Run clustering on a single object

# clustered_object <- clustering_workflow(human_gene_transcript_object, experiment_name = "object_hu_trans", organism = "human")

# By default clustering will be run at ten different resolutions between 0.2 and 2.0. Any resolution can be specified by providing the resolution argument as a numeric vector.

## Get a first look at a processed dataset using an interactive shiny app
# minimalSeuratApp(clustered_object)

