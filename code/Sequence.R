require(servr, quietly=TRUE)
source("code/rmd2md.R")
source("code/knitpages.R")
rmd2md = rmd2md
knit_folder = knit_folder
#### Create a Blog Post ####
# This creates a new rmd post
# blog.title <- "New Blog Post Title"
rm(blog.title)
blog.title <- readline("What would you like to name your post?")

blog.path <-system(paste("bundle exec octopress new post ", blog.title ," --dir blog", sep = ""),intern=TRUE)

# Edit the post
file.edit(blog.path)
warning("Edit the blog file and then return to Sequence.R to process and push to git")
# process the rmd to md file
# rmd2md(dir_rmd = "_posts/blog", dir_md = "_posts/blog") # for a blog post
knit_folder("_R", "_posts/blog", "figs/", "_caches/") # for a blog post
servr::jekyll(command="bundle exec jekyll build", serve = FALSE)

##-----------------------------##

#### Create a Draft ####
draft.title <- "draft1"
system(paste("bundle exec octopress new draft ", draft.title , sep = ""))
#-----------------------------#

#### Create an Article ####
article.title <- readline("What would you like to name your post?")
system(paste("bundle exec octopress new post ", article.title ," --dir article", sep = ""),intern=TRUE)
# rmd2md(dir_rmd = "_posts/articles", dir_md = "_posts/articles") # for an article
knit_folder("_R", "_posts/articles", "figs/", "_caches/")# for an article

#-----------------------------#

#### Convert a Draft into a Post ####
blog.path <-system(paste("bundle exec octopress publish"))
##-----------------------------##

#### Build the site using Jekyll ####
#servr::jekyll(command="bundle exec jekyll build") # Use this if you want to preview the site
servr::jekyll(command="bundle exec jekyll build", serve = FALSE)

# Then use git to commit the changes and then push to github

##-----------------------------##
