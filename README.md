# Website OSCRotterdam

Source code of the website of the Open Science Community Rotterdam.

http://www.openscience-rotterdam.com

This website is developed using [_R_](https://cran.r-project.org/) and 
[`blogdown`](https://github.com/rstudio/blogdown). See 
[this book](https://bookdown.org/yihui/blogdown/) for details on how to 
create a website with this software.

*Hint for Linux user*: Do **not** install Hugo via apt or snap, use `blogdown::install_hugo` in _R_ instead. 

## Usage

Please only work in the `development`-branch. 
To publish your last changes, perform the following steps:

1. `blogdown::build_site(build_rmd = 'timestamp')` in `R` to build the new public folder 
2. `commit` your changes in development folder(!)
3. `push` all changes and resolve all merge conflicts
4. run `deploy.sh`

To serve the site locally, perform step 1 and then `blogdown::serve_site()`
