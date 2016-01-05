---
layout: post
status: publish
published: true
date: 2016-01-05 14:23:34 +1100
title:  "Serve Jekyll Websites with servr and knitr"
categories: [jekyll, rstats]
---
# Writing in Rstudio
This blog post has been rwitten in Rstudio and using the `rmd2md` function. When this is run it will convert any file (with the `*.rmd` extention) that is found in the `_rmd` folder to the markdown that can be parsed by Jekyll and served on github pages. 
 
be sure to include the header between three dashes:
 
```
#layout: post
#status: process
#published: false
#date: 2016-01-05 14:23:34 +1100
#title:  "The Post Title"
#categories: tags
```
 
The workflow is as follows:
1. Write a post with the above header, and put it in the `_rmd` folder.
2. Run the [rmd2md()](https://github.com/AndySouth/andysouth.github.io/blob/master/rmd2md.r) command within *Rstudio*.
3. Run `servr::jekyll(command="bundle exec jekyll build",serve=FALSE)` from the [servr](https://github.com/yihui/servr) package to check that the site builds.
4. Use git within *Rstudio* to add staged files, commit changes and push to the repository.
5. Check post has worked.
 
# Testing code chunks take 2

{% highlight r %}
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

![plot of chunk unnamed-chunk-1](/figures/unnamed-chunk-1-1.png) 

{% highlight r %}
ggsave(filename = "figures/Rplot.png")
{% endhighlight %}



{% highlight text %}
## Saving 7 x 7 in image
{% endhighlight %}
Lets see if this works?