context("metadata validity")

test_that("metadata is valid", {
    if (!requireNamespace("ExperimentHubData", quietly = TRUE)) {
        BiocManager::install("ExperimentHubData")
    }

    path <- find.package("chevreuldata")
    metadata <- system.file("extdata", "metadata.csv", package = "chevreuldata")
    expect_type(ExperimentHubData::makeExperimentHubMetadata(path), "list")
})
