#' R Library Summary
#'
#' Provide a brief descript of the package libraries in your machine
#'
#' @return A two-column `data.frame` containing the count of packages in each of the user libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
    pkgs <- utils::installed.packages()
    pkg_tbl <- table(pkgs[,"LibPath"])
    pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
    names(pkg_df) <- c("library", "n_packages")
    pkg_df
}
