---
layout: post
status: publish
published: true
categories: blog
share: true
date: 2016-01-05 14:23:34 +1100
modified: 2016-01-07 08:44:52 +1100
title:  "Serve Jekyll Websites with servr and knitr"
comments: true
tags: [test, code, Rstudio]
---
# Writing in Rstudio
This blog post has been written in Rstudio and using the `rmd2md` function. When this is run it will convert any file (with the `*.rmd` extention) that is found within the `_rmd` folder to markdown that can be parsed by Jekyll and served on github pages. This is then moved to the `_posts` folder 
 
be sure to include the header between three dashes:
 

{% highlight r %}
#layout: post
#status: process
#published: false
#date: 2016-01-05 14:23:34 +1100
#title:  "The Post Title"
#categories: blogs
{% endhighlight %}
 
The workflow is as follows:
 
1. Write a post with the above header, and put it in the `_rmd` folder.
2. Run the [rmd2md()](https://github.com/AndySouth/andysouth.github.io/blob/master/rmd2md.r) command within *Rstudio* which converts and copies the post to the `_posts` folder.
3. Run `servr::jekyll(command="bundle exec jekyll build",serve=FALSE)` from the [servr](https://github.com/yihui/servr) package in *Rstudio* to check that the site builds `serve=TRUE` allows you to view it locally.
4. Use the `git` version control system within *Rstudio* to add staged files, commit changes and push to the repository on [github](http://www.github.com).
5. Wait a few minutes for the site to build remotely (time varies) and navigate to page to check post has rendered correctly.  
 
 
# Testing code chunks take 2
Here I will test the code display and see if I can generate a figure and place it on the page---it is mainly for my own reference.

{% highlight r %}
require(ggplot2)
df <- data.frame(gp = factor(rep(letters[1:3], each = 10)),
                 y = rnorm(30))
# Compute sample mean and standard deviation in each group
ds <- plyr::ddply(df, "gp", plyr::summarise, mean = mean(y), sd = sd(y))
 
 
ggplot() +
  geom_point(data = df, aes(x = gp, y = y)) +
  geom_point(data = ds, aes(x = gp, y = mean),
             colour = 'red', size = 3) +
  geom_errorbar(data = ds, aes(x = gp, y = mean,
                               ymin = mean - sd, ymax = mean + sd),
                colour = 'red', width = 0.4)
{% endhighlight %}

![plot of chunk unnamed-chunk-2](/figures/unnamed-chunk-2-1.png) 

{% highlight r %}
ggsave(filename = "figures/Rplot.png")
{% endhighlight %}
Lets see if this works?
