source("code/rmd2md.R")
rmd2md = rmd2md
# This creates a new rmd post
system('bundle exec octopress new post "New Blog Post Title" --dir blog')
rmd2md(dir_rmd = "_posts/blog", dir_md = "_posts/blog") # for a blog post
#rmd2md(dir_rmd = "_posts/articles", dir_md = "_posts/articles") # for an article
servr::jekyll(command="bundle exec jekyll build")
servr::jekyll(command="bundle exec jekyll build", serve = FALSE)

