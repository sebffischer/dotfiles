options(repos = c(
  CRAN = "https://ftp.fau.de/cran/"
))

# Martins setting's
Sys.setenv(
  OMP_NUM_THREADS = 1,
  OMP_THREAD_LIMIT = 1
)

if (interactive()) {
  r = function() startup::restart()
  # require(colorout)
}

# manage libraries.
if (!dir.exists(Sys.getenv("R_LIBS_USER"))) {
  dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)  # create personal library
}
.libPaths(Sys.getenv("R_LIBS_USER"))  # add to the path

options(
  mlr3torch.cache = TRUE,
  radian.color_scheme = "native",
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

  # Better printing of datatables
  datatable.print.class = TRUE,
  datatable.print.keys = TRUE,
  mlr3oml.cache = TRUE,
  help_type = "html"
)
