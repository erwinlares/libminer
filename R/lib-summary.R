#' R Library Summary
#'
#' Provide a brief descript of the package libraries in your machine
#'
#' @param sizes  logical indicating whether or not to calculate library sizes. Default `FALSE`.
#'
#' @return A two-column `data.frame` containing the count of packages in each of the user libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE) {
    #check your arguments early on so it fails asap
    if(!is.logical(sizes)){
        stop("'sizes' must be either TRUE or FALSE")
    }

    pkgs <- utils::installed.packages()
    pkg_tbl <- table(pkgs[,"LibPath"])
    pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
    names(pkg_df) <- c("library", "n_packages")

    if(sizes) {
        pkg_df$lib_size <- sapply(
            pkg_df$library,
            function(x) {
                sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
            }
        )
    }
    pkg_df
}
