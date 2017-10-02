#' Grade Distribution Data from Summer 2005 - Summer 2017
#'
#' Grade distributions by letter grade for every class and instructor from
#' Summer 2005 to Summer 2017 at the University of Illinois at Urbana-Champaign
#' (UIUC).
#' @name grades_uiuc
#' @format There are four different data sets documented simultaneously within
#' this file.
#'
#' - `grades_fall`: 58934 observations and 25 variables.
#' - `grades_spring`: 58220 observations and 25 variables.
#' - `grades_summer`: 6948 observations and 25 variables.
#' - `grades_winter`: 53 observations and 25 variables.
#'
#' with the format of:
#'
#' - `crn`
#'     - Course Registration Number
#' - `subject`
#'     - Department course was offered in
#' - `course`
#'     - Course Number
#' - `course_title`
#'     - Name of the Course
#' - `course_section`
#'     - Lecture, Discussion, or Online Section ID
#' - `sched_type`
#'     - Lecture, Discussion, Online
#' - `a_plus`
#'     - Number of Students Receiving an A+
#'     - Weighted as 4.00
#' - `a`
#'     - Number of Students Receiving an A
#'     - Weighted as 4.00
#' - `a_minus`
#'     - Number of Students Receiving an A-
#'     - Weighted as 3.67
#' - `b_plus`
#'     - Number of Students Receiving an B+
#'     - Weighted as 3.33
#' - `b`
#'     - Number of Students Receiving an B
#'     - Weighted as 3.00
#' - `b_minus`
#'     - Number of Students Receiving an B-
#'     - Weighted as 2.67
#' - `c_plus`
#'     - Number of Students Receiving an C+
#'     - Weighted as 2.33
#' - `c`
#'     - Number of Students Receiving an C
#'     - Weighted as 2.00
#' - `c_minus`
#'     - Number of Students Receiving an C-
#'     - Weighted as 1.67
#' - `D_plus`
#'     - Number of Students Receiving an D+
#'     - Weighted as 1.33
#' - `d`
#'     - Number of Students Receiving an D
#'     - Weighted as 1.00
#' - `d_minus`
#'     - Number of Students Receiving an D-
#'     - Weighted as 0.67
#' - `f`
#'     - Number of Students Receiving an F
#'     - Weighted as 0.00
#' - `w`
#'     - Number of Students Receiving an W (Withdrawal)
#' - `average_grade`
#'     - The average GPA for the course
#' - `semester`
#'     - Name of term: Fall, Winter, Spring, or Summer
#' - `year`
#'     - Year semester takes place in.
#'
#' @details
#' As the R data file type allows for editing of the included data, we ask that
#' prior to using the files you accept responsibility for accurate dissemination
#' of this information and agree that no manipulation of the data that results
#' in falsification of the information will occur.
#'
#' Missing values contained within the data set are due to the
#' grade distributions not being displayed when a section has low enrollment or
#' when all students in the class have the same grade.
#' Because of the low enrollment in those classes or because all the students
#' in a class received the same grade, the grade data could identify a student.
#' Therefore, this data has been omitted to satisfy Family Educational Rights
#' and Privacy Act (FERPA) (20 U.S.C. §1232g).
#'
#' Please see the [Grade Scale](https://registrar.illinois.edu/explanation-of-grades)
#' for details as to how the average GPA was calculated.
#'
#' @examples
#'
#' # Load Fall Data
#' data("grades_fall", package="uiucdata")
#' # Load Winter Data
#' data("grades_winter", package="uiucdata")
#' # Load Spring Data
#' data("grades_spring", package="uiucdata")
#' # Load Summer Data
#' data("grades_summer", package="uiucdata")
#'
#' # Make a grades data.frame containing everything
#' grades = rbind(grades_fall, grades_winter,
#'                grades_spring, grades_summer)
"grades_fall"

#' @name grades_uiuc
"grades_spring"

#' @name grades_uiuc
"grades_summer"

#' @name grades_uiuc
"grades_winter"
