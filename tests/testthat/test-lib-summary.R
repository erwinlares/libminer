test_that("lib_summary returns expected results", {
    res <- lib_summary()
    expect_s3_class(res, "data.frame")
    expect_equal(ncol(res), 2)
    expect_equal(names(res), c("library", "n_packages"))
    expect_type(res$library, "character")
    expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails appropriately", {
    expect_error(lib_summary("foo"), "'sizes' must be either TRUE or FALSE")
})

test_that("sizes argument work", {
    res <- lib_summary(sizes = TRUE)
    expect_equal(names(res), c("library", "n_packages", "lib_size"))
    expect_type(res$lib_size, "double")
})
