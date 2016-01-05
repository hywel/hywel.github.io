---
layout: post
title:  "Syntax Highlighting"
date:   2016-01-05 10:59:11 +1100
categories: jekyll update
---

I am currently investigating how to embed code blocks and tables within a static page and have them compile on github pages. This post is using the `kramdown` markup flavour, but in the future I would like to use [RStudio IDE](http://www.rstudio.com) and [Rmarkdown](http://rmarkdown.rstudio.com) to add pages to a static server using [Jekyll](http://jekyllrb.com). I think that the *R* package [**servr**](https://github.com/yihui/servr) will also be very useful along with the associated `knitr-jekyll` repo developed by [Yihui Xie](https://github.com/yihui) who also developed the incredibly useful and very powerful [knitr](https://github.com/yihui/knitr).

I have also found another [blog post](http://brendanrocks.com/blogging-with-rmarkdown-knitr-jekyll/) that details some refinements and use the aforementioned packages as the basis. I will investigate and detail findings here...

Before getting on to that however, I will start with some tests using the markdown that Jekyll will both understand and github pages will compile - this makes us of Liquid tags such as "% highlight r % endhighlight %". 

Github pages only supports a subset of the liquid tags and doesn't allow use of the plug-in architecture. For this reason I had to change my plans to use the very elegant [Tufte Theme](https://github.com/clayh53/tufte-jekyll) developed by [Clay Harmon](https://github.com/clayh53), as this doesn't seem to compile well on github pages - I could compile locally and then push to gituhub, but I was looking for something more flexible and quickly updatable on-the-go!  
 
So back to the highlighting and visualisation of results...
 
# Highlighting #

For example, here is the command within *R* that can be used to build a site locally, ready for pushing to github[^1]. This is different to the triple backtick syntax of **RStudio** flavoured Rmarkdown. 

[^1]: Not sure why all of the following code blocks are truncated - it may be the theme? They seem to be generally OK when viewing the actual post.
 
{% highlight r %}
servr::jekyll(command="bundle exec jekyll build")
{% endhighlight %}

Note: That I need to use this command rather than the default `command="jekyll build"` as there seems to be some problems finding the ruby gems in `\usr\bin\` on OS X *El Capitan*. This has been detailed elsewhere and once I settle on a stable implementation I will write about the steps. A related problem is that I can't use the autoregeneration feature `--watch` using the `servr::jekyll` function. 

If needed the site can be compiled without serving using the following syntax:.

{% highlight r %}
servr::jekyll(command="bundle exec jekyll build", serve = FALSE)
{% endhighlight %}


# Early Days #

All of this is still early days and I am looking forward to starting to play around with tables that are produced by `kable` which can be embedded directly onto pages.

For Example:
{% highlight r %}
knitr::kable(head(mtcars))
{% endhighlight %}

will create:
```
|                  |  mpg| cyl| disp|  hp| drat|    wt|  qsec| vs| am| gear| carb|
|:-----------------|----:|---:|----:|---:|----:|-----:|-----:|--:|--:|----:|----:|
|Mazda RX4         | 21.0|   6|  160| 110| 3.90| 2.620| 16.46|  0|  1|    4|    4|
|Mazda RX4 Wag     | 21.0|   6|  160| 110| 3.90| 2.875| 17.02|  0|  1|    4|    4|
|Datsun 710        | 22.8|   4|  108|  93| 3.85| 2.320| 18.61|  1|  1|    4|    1|
|Hornet 4 Drive    | 21.4|   6|  258| 110| 3.08| 3.215| 19.44|  1|  0|    3|    1|
|Hornet Sportabout | 18.7|   8|  360| 175| 3.15| 3.440| 17.02|  0|  0|    3|    2|
|Valiant           | 18.1|   6|  225| 105| 2.76| 3.460| 20.22|  1|  0|    3|    1|
```


Which displays in Markdown:


|                  |  mpg| cyl| disp|  hp| drat|    wt|  qsec| vs| am| gear| carb|
|:-----------------|----:|---:|----:|---:|----:|-----:|-----:|--:|--:|----:|----:|
|Mazda RX4         | 21.0|   6|  160| 110| 3.90| 2.620| 16.46|  0|  1|    4|    4|
|Mazda RX4 Wag     | 21.0|   6|  160| 110| 3.90| 2.875| 17.02|  0|  1|    4|    4|
|Datsun 710        | 22.8|   4|  108|  93| 3.85| 2.320| 18.61|  1|  1|    4|    1|
|Hornet 4 Drive    | 21.4|   6|  258| 110| 3.08| 3.215| 19.44|  1|  0|    3|    1|
|Hornet Sportabout | 18.7|   8|  360| 175| 3.15| 3.440| 17.02|  0|  0|    3|    2|
|Valiant           | 18.1|   6|  225| 105| 2.76| 3.460| 20.22|  1|  0|    3|    1|

The Tufte package has very elegant tables reminiscent of the `booktabs` package in LaTeX. I will see if I can keep that functionality when I change themes?

## Figures

Another important feature will be the ability to generate figures quickly using [`ggplot2`](http://ggplot2.org) and other packages within *R*.

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
ggsave(filename = "assets/img/Rplot.png")
{% endhighlight %}

![A Plot output from R](/assets/img/Rplot.png)

