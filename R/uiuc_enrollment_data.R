#' Enrollment based on Curriculum and Class Level Data from Fall 2004 - Spring 2017
#'
#' This report uses the final enrollment statistics from the official tenth day
#' of on-campus terms. The reports are sorted by college, department code, and
#' major code.
#' @name curriculum_and_class_level
#' @format There are three different data sets documented simultaneously within
#' this file.
#'
#' - `fall_curriculum_class`: 8590 observations and 23 variables.
#' - `spring_curriculum_class`: 8760 observations and 23 variables.
#' - `summer_curriculum_class`: 6369 observations and 23 variables.
#'
#' with the format of:
#'
#' - `term_code`
#'     - Factor
#'     - ID for the Current Semester
#' - `college`
#'     - Factor
#'     - See the [Office of the Registrar](http://registrar.illinois.edu)
#' - `department`
#'     - Factor
#'     - Department Code
#' - `degree`
#'     - Factor
#'     - See <http://catalog.illinois.edu/degree-programs/>
#' - `major_code`
#'     - Factor
#'     - Major number
#' - `major_name`
#'     - Factor
#'     - Name of the Major
#' - `concentration_code`
#'     - Factor
#'     - ID of Major Concentration
#' - `concentration_name`
#'     - Factor
#'     - Name of the Major Concentration
#' - `freshman`
#'     - Integer
#'     - Count of Enrolled Freshman
#' - `sophomore`
#'     - Integer
#'     - Count of Enrolled Sophomores
#' - `junior`
#'     - Integer
#'     - Count of Enrolled Juniors
#' - `senior`
#'     - Integer
#'     - Count of Enrolled Seniors
#' - `nondegree_undergrad`
#'     - Integer
#'     - Count of Non-degree Program Undergraduates
#' - `total_undergrad`
#'     - Integer
#'     - Count of All Enrolled Undergraduates
#' - `grad_master`
#'     - Integer
#'     - Count of Enrolled Master Graduate Students
#' - `grad_doctoral`
#'     - Integer
#'     - Count of Enrolled Doctoral Graduate Students
#' - `nondegree_grad`
#'     - Integer
#'     - Count of Enrolled Non-degree Program Graduate Students
#' - `total_grad`
#'     - Integer
#'     - Count of All Enrolled Graduate Students
#' - `professional`
#'     - Integer
#'     - Count of All Professional Students
#' - `overall_total`
#'     - Integer
#'     - Count of All Enrolled Students
#' - `academic_program_code`
#'     - Factor
#'     - University ID Code for Program of Study
#'     - e.g. 10KL0010BS, where BS represents degre
#' - `year`
#'     - Factor
#'     - 2005 - 2016
#' - `term`
#'     - Factor
#'     - Fall, Spring, or Summer
#'
#' @details
#'
#' Only students taking at least one on-campus, credit-bearing class
#' are included in these reports. The following categories of students are
#' excluded:
#'
#' - auditors (students taking only non-credit classes);
#' - students taking only extramural or off-campus classes;
#' - Medical Scholars taking no on-campus, non-MSP classes.
#'     - Note: Illini Center MBA students are included in these statistics.
"fall_enrolled_ranking"

#' @rdname curriculum_and_class_level
"spring_enrolled_ranking"

#' @rdname curriculum_and_class_level
"summer_enrolled_ranking"
