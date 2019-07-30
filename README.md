# Website OSCRotterdam
***
***

Source code of the website of the Open Science Community Rotterdam.

This website is developed using [_R_](https://cran.r-project.org/) and [`blogdown`](https://github.com/rstudio/blogdown). See [this book](https://bookdown.org/yihui/blogdown/) for details on how to create a website with this software.


## Usage
To publish your last changes online:
1. `blogdown::build_site()` in `R` to build the new public folder 
2. commit your changes in development folder
3. run `.deploy.sh`



**DESIRED FEATURES**:
- **home/about**: a landing page with the logo and a brief description of who we are and what we do --> blog post (pinned on top) with OSCR logo, how OSCR benefit researchers, description of **Categories** and **Tags**, links to main pages
- **blog/news**: announcements on latest members of the community, new academic papers on open science, policy initiatives, etc. --> blog posts, clever use of **Categories**
- visitors may leave comments using Disqus --> _Disqus_ account created
- **members**: picture and brief description of each member of the community. Tags (i.e., keywords) would help visitors browse members by topic of expertise, to easily find who can help them with their specific issue --> blog posts, clever use of **Tags**
- **agenda**: next meetings/lectures/workshops --> blog posts, clever use of **Categories**
- **resources**: a list of curated open science resources (e.g., for teaching) --> blog posts, clever use of **Categories**
- Loek Brinkman's suggestions:
  - people could make/update their own profile --> I would rather not
  - section to host member initiatives that we facilitate --> blog posts, clever use of **Categories**
  - upload our Code of Conduct --> add link to Google Doc in **About** section
  - integrate signing up for the community with a box to sign up for the newsletter (Mailchimp) --> requires an account on MailChimp and a Newsletter section in the website template (example [here](https://themes.gohugo.io/theme/restaurant-hugo/#contact-us))

***
***
