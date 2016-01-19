source("code/rmd2md.R")
rmd2md = rmd2md
# This creates a new rmd post
# blog.title <- "New Blog Post Title"
blog.title <- "A Phonetic Post"
blog.path <-system(paste("bundle exec octopress new post ", blog.title ," --dir blog", sep = ""),intern=TRUE)
#blog.path <- as.list(blog.path)
# Edit the post

# process the rmd to md file
rmd2md(dir_rmd = "_posts/blog", dir_md = "_posts/blog") # for a blog post

# article.title <- "New Article Title"
# system(paste("bundle exec octopress new post ", article.title ," --dir article", sep = ""))
#rmd2md(dir_rmd = "_posts/articles", dir_md = "_posts/articles") # for an article

#
servr::jekyll(command="bundle exec jekyll build")
servr::jekyll(command="bundle exec jekyll build", serve = FALSE)

