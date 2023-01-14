if (interactive()) {
  r = function() startup::restart()
  require(colorout)
}

# manage libraries.
if (!dir.exists(Sys.getenv("R_LIBS_USER"))) {
  dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)  # create personal library
}
.libPaths(Sys.getenv("R_LIBS_USER"))  # add to the path

options(repos = "https://ftp.fau.de/cran/")
options(radian.color_scheme = "monokai")

options(
  usethis.full_name = "Sebastian Fischer",
  usethis.description = list(
    `Authors@R` = 'person("Sebastian", "Fischer", email = "sebf.fischer@gmail.com", role = c("aut", "cre"),
    comment = c(ORCID = "YOUR-ORCID-ID"))',
    License = "MIT + file LICENSE",
    Version = "0.0.0.9000"
  ),
  usethis.protocol = "ssh",
  # No annoying popup window with when `help()` finds more than one match
  menu.graphics = FALSE,

  # Require to upload to OpenML
  languageserver.formatting_style = function(options) styler.mlr::mlr_style(),
  #
  # Better printing of datatables
  datatable.print.class = TRUE,
  datatable.print.keys = TRUE,
  mlr3oml.cache = TRUE,
  wbo.path = "/home/sebi/r/weighted-bo/experiments"
)
# public_server()
if (!exists("use_test_server")) {
  use_test_server = function() {
    options(
      mlr3oml.api_key = Sys.getenv("TESTOPENMLAPIKEY"),
      mlr3oml.server = "https://test.openml.org/api/v1"
    )
  }
}
if (!exists("use_public_server")) {
  use_public_server = function() {
    options(
      mlr3oml.api_key = Sys.getenv("OPENMLAPIKEY"),
      mlr3oml.server = "https://www.openml.org/api/v1"
    )
  }
}
