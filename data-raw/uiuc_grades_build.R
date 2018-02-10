library("readxl")
library("tibble")
library("purrr")
library("dplyr")

# Read in the grade distributions
custom_grade_read = function(fp) {

  # Obtain file.ext
  file_name = basename(fp)

  # Read information from excel and add in Year information
  grades_semester = fp %>%
    read_excel(na = "N/A") %>%
    add_column(Semester = gsub(".*(Fall|Spring|Summer|Winter).*", "\\1", file_name),
               Year = gsub(".*([[:digit:]]{4}).*", "\\1", file_name))

  # Reorganize columns as the later spreadsheet switch from Course Subject => Subject, Course Number => Course
  if(any(names(grades_semester) %in% c("Course Subject", "Course Number"))) {
    grades_semester = rename(grades_semester, Subject = `Course Subject`, Course = `Course Number`)
  }

  names(grades_semester) = names(grades_semester) %>%
    gsub("[[:space:]]","_", .) %>%
    gsub("-","_minus", .) %>%
    gsub("\\+","_plus", .) %>%
    tolower()

  # Release information
  grades_semester
}

# Parse the files, bind them, and release as a data.frame
grade_dist = list.files("data-raw/grade-dist/xlsx", ".*.xlsx", full.names = TRUE) %>%
  map_dfr(custom_grade_read) %>% as.data.frame


devtools::use_data(grade_dist)

# Split based on Semester. (Easier updating)
grades_fall = uiuc_grades %>%
  filter(semester == "Fall")

grades_spring = uiuc_grades %>%
  filter(semester == "Spring")

grades_summer = uiuc_grades %>%
  filter(semester == "Summer")

grades_winter = uiuc_grades %>%
  filter(semester == "Winter")

# Save a file
devtools::use_data(grades_fall, overwrite = TRUE)
devtools::use_data(grades_spring, overwrite = TRUE)
devtools::use_data(grades_summer, overwrite = TRUE)
devtools::use_data(grades_winter, overwrite = TRUE)
