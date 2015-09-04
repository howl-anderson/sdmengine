#!/usr/bin/env Rscript

#' start_engine
#'
#' start engine process
#'
#' @param workshop_dir dir of workshop
#' @return NULL
#'
#' @export
start_engine <- function(workshop_dir) {
    configure <- load_configure_file(workshop_dir)
    implement_engine <- configure[["engine"]]

    package_name <- paste("sdmengine", implement_engine, sep=".")
    package_exists_flag <- library(package_name, character.only=TRUE,
                                   logical.return=TRUE,
                                   warn.conflicts=FALSE)

    if (! package_exists_flag) {
        # TODO: more specific message
        stop("there are no implement package")
    }
    function_name <- paste("sdmengine", implement_engine, "implement", sep=".")
    do.call(function_name, list(workshop_dir=workshop_dir))

    return(NULL)
}