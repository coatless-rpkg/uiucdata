
excellent_teachers = read.csv("data-raw/excellent-teachers/TRE-UIUC-AllYears.csv",
                              na.strings = "?", stringsAsFactors = FALSE)

# from ?toupper help file
capwords <- function(s, strict = FALSE) {
  cap <- function(s) paste(toupper(substring(s, 1, 1)),
                           {s <- substring(s, 2); if(strict) tolower(s) else s},
                           sep = "", collapse = " " )
  sapply(strsplit(s, split = " "), cap, USE.NAMES = !is.null(names(s)))
}

# De-capitalize everything...
excellent_teachers$unit = capwords(excellent_teachers$unit, strict = TRUE)
excellent_teachers$lname = capwords(excellent_teachers$lname, strict = TRUE)

# Split Semester Code from Year
excellent_teachers$year = gsub(".*([[:digit:]]{4})$",
                               "\\1", excellent_teachers$term)

excellent_teachers$semester = gsub("([[:alpha:]]{2}).*$",
                               "\\1", excellent_teachers$term)

# Cast to factors...
excellent_teachers[] =
  lapply(excellent_teachers[],
         factor)

# Fix factor encoding
fix_factor_encoding = function(x) {

  Encoding(levels(x)) <- "latin1"
  levels(x) <- iconv(
    levels(x),
    "latin1",
    "UTF-8"
  )

}

levels(excellent_teachers$unit) = fix_factor_encoding(excellent_teachers$unit)

levels(excellent_teachers$lname) = fix_factor_encoding(excellent_teachers$lname)


excellent_teachers = excellent_teachers[, c("term", "semester", "year", "unit", "lname", "fname", "role", "ranking", "course")]
devtools::use_data(excellent_teachers, overwrite = TRUE)
