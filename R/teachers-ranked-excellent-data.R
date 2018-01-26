#' Teachers Ranked as Excellent from Fall 1993 through Summer 2017
#'
#' A collection of all "Teachers Ranked as Excellent" at UIUC from Fall 1993
#' through Summer 2017.
#' @format A `data.frame` with 85,778 observations and 9 variables:
#'
#' - `term`: Two letter semester code (`sp`, `su`, `fa`, or `wi`) followed by a four digit year.
#'     - Examples: `sp2017`, `fa2013`, `su2012`.
#' - `semester`: Two letter semester code
#'     - Examples: `sp`, `su`, `fa`, or `wi`
#' - `year`: Four digit year.
#'     - Examples: `2017`, `2013`, `2012`.
#' - `unit`: The CITL-supplied headers for the unit teaching the course.
#'     - Examples: `ACCOUNTANCY`, `SOCIAL WORK`, `LINGUISTICS`, `NUCLEAR, PLASMA & RAD. ENGR.`
#' - `lname`: The last name of the teacher.
#'     - Examples: `FAGEN-ULMSCHNEIDER`, `FLANAGAN`, `FLECK`
#' - `fname`: The first letter of the first name of the teacher.
#'     - Examples: `W`, `K`, `M`
#' - `role`: `Instructor` or `TA`
#' - `ranking`: `Excellent` or `Outstanding`
#' - `course`: The course the teacher was ranked as excellent.  If no course is given, the `course` field is set to `NA` (this includes cases when the raw data lists the course as `0`, `000`, or `999`).
#'     - Examples: `199`, `225`, `560`, `NA`
#' @details
#' At the University of Illinois at Urbana-Champaign, every semester students
#'  complete an [Instructor and Course Evaluation (ICES)](http://citl.illinois.edu/citl-101/measurement-evaluation/teaching-evaluation/teaching-evaluations-(ices)) questionnaire for each
#'  course they are enrolled.  The [Center for Innovation in Teaching and
#'  Learning (CITL)](http://citl.illinois.edu/) compiles this data into the list of "Teachers Ranked as Excellent"
#'   and publishes the names of those teaches in the local newspaper and
#'   [online as a PDF](http://citl.illinois.edu/citl-101/measurement-evaluation/teaching-evaluation/teaching-evaluations-(ices)/teachers-ranked-as-excellent)
#' @source
#' Wade Fagen-Ulmschneider
#'
#' Teaching Assistant Professor, Computer Science
#'
#' University of Illinois at Urbana-Champaign
#'
#' <http://waf.cs.illinois.edu/>
#' @references
#' <https://github.com/wadefagen/Teachers-Ranked-As-Excellent-UIUC>
"excellent_teachers"


