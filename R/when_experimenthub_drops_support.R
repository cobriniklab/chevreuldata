#' When experimenthub drops support
#'
#' @return the included dataset
#' @export
#'
#' @examples
#' human_gene_transcript_sce()
human_gene_transcript_sce <- function(){
	loadRData <- function(fileName) {
		# loads an RData file, and returns it
		load(fileName)
		get(ls()[ls() != "fileName"])
	}
	loadRData(url("http://cobrinik-1.saban-chla.usc.edu/chevreuldata/human_gene_transcript_sce.rda"))
}
