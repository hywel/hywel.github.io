# Introduction #

This is the repository for my personal website created using [Jekyll](http://jekyllrb.com) based on the [so simple](https://mademistakes.com) template by Michael Rose which has some very snappy features and minimal plug-ins.

I am updating the website from within [RStudio](http://www.rstudio.com) using [Rmarkdown](http://rmarkdown.rstudio.com) adding pages to a static server by first converting them to standard markdown using a [script](https://github.com/AndySouth/andysouth.github.io/blob/master/rmd2md.r) by Andy South. The *R* package [**servr**](https://github.com/yihui/servr) along with the associated `knitr-jekyll` repo developed by [Yihui Xie](https://github.com/yihui) allows me to embed code and figures directly into the pages. 

The workflow is as follows:
 
1. Write a post with the above header, and put it in the `_rmd` folder.
2. Run the [rmd2md()](https://github.com/AndySouth/andysouth.github.io/blob/master/rmd2md.r) command within *Rstudio* which converts and copies the post to the `_posts` folder.
3. Run `servr::jekyll(command="bundle exec jekyll build",serve=FALSE)` from the [servr](https://github.com/yihui/servr) package in *Rstudio* to check that the site builds `serve=TRUE` allows you to view it locally.
4. Use the `git` version control system within *Rstudio* to add staged files, commit changes and push to the repository on [github](http://www.github.com).
5. Wait a few minutes for the site to build remotely (time varies); navigate to the page to check post has rendered correctly. 

## The purpose of the site ##

I am hoping that this will become a central location for my public research and discussion.  

## Contact ##

Please visit the [site](http://hywel.gihub.io) for personal contact information and details about current projects.