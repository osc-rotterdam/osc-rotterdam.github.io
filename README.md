# Website OSCRotterdam

Source code of the [website of the Open Science Community Rotterdam](http://www.openscience-rotterdam.com) (OSCR), distributed under [GNU General Public License v. 3.0](https://www.gnu.org/licenses/gpl-3.0.en.html#license-text).

This website is developed using [_R_](https://cran.r-project.org/), [`blogdown v1.1`](https://github.com/rstudio/blogdown), and [Hugo v0.81.0](https://gohugo.io/). See 
[this book](https://bookdown.org/yihui/blogdown/) for details on how to 
create a website with this software.

*Hint for Linux user*: Do **not** install Hugo via apt or snap, use `blogdown::install_hugo()` in _R_ instead. 

## Usage

Please only work in the `development`-branch. 
To publish your last changes, perform the following steps:

1. `blogdown::build_site(build_rmd = 'timestamp')` in `R` to build the new public folder 
2. `commit` your changes in development folder(!)
3. `push` all changes and resolve all merge conflicts
4. run `deploy.sh`

To serve the site locally, perform step 1 and then `blogdown::serve_site()`:
