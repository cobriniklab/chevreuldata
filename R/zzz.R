#' @importFrom ExperimentHub createHubAccessors
#' @importFrom utils read.csv
.onLoad <- function(libname, pkgname) {
    fl <- system.file("extdata", "metadata.csv", package = pkgname)
    titles <- read.csv(fl, stringsAsFactors = FALSE)$Title
    ExperimentHub::createHubAccessors(pkgname, titles)

}

#' human_gene_transcript_sce
#'
#' Human retinal organoid data from
#' https://www.biorxiv.org/content/10.1101/2023.02.28.530247v1
#'
#' @name human_gene_transcript_sce
#' @docType data
#' @author Kevin Stachelek \email{kevin.stachelek@gmail.com}
NULL
