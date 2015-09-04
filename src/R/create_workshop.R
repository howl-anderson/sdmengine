#!/usr/bin/env Rscript

#' create_workshop
#'
#' @param base_dir directory of base
#' @return NULL
#'
#' @export
create_workshop <- function(base_dir) {
    # create the workshop dir
    if (! file.exists(base_dir)) {
        dir.create(base_dir)
    }

    # create basic dir
    environment_dir <- file.path(base_dir, "environment")
    dir.create(environment_dir)

    species_dir <- file.path(base_dir, "species")
    dir.create(species_dir)

    base_environment_dir <- file.path(base_dir, "base_environment")
    dir.create(base_environment_dir)

    result_dir <- file.path(base_dir, "result")
    dir.create(result_dir)

    database_dir <- file.path(base_dir, "configure")
    dir.create(database_dir)

    return(NULL)
}