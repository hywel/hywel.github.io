---
layout: post
title:  "Syntax Highlighting"
date:   2016-01-05 10:59:11 +1100
categories: jekyll update
---

I am currently investigating how to embed code blocks and tables and have them compile on github pages. This post is using the `kramdown` markup flavour, but in the future I would like to use [RStudio IDE](http://www.rstudio.com) and Rmarkdown to add to [Jekyll](http://jekyllrb.com). I think that the The R package [**servr**](https://github.com/yihui/servr) will also be very useful and the associated `knitr-jekyll` repo developed by Yihui Xie.

I have also found another [blog post](http://brendanrocks.com/blogging-with-rmarkdown-knitr-jekyll/) that details some further packages that use these as a basis. I will investigate and detail findings here

Before getting on to that, I will start with some tests using the markdown that Jekyll with understand and compile - this makes us of Liquid tags such as `{% highlight r %}{% endhighlight %}`
 
# Highlighting #

For example here is the command within R that can be used to build a site locally ready for pushing to github. 

{% highlight r %}
servr::jekyll(command="bundle exec jekyll build")
{% endhighlight %}

This is different to the triple backtick syntax of RStudio flavoured Rmarkdown. 

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

Which displays:

|                  |  mpg| cyl| disp|  hp| drat|    wt|  qsec| vs| am| gear| carb|
|:-----------------|----:|---:|----:|---:|----:|-----:|-----:|--:|--:|----:|----:|
|Mazda RX4         | 21.0|   6|  160| 110| 3.90| 2.620| 16.46|  0|  1|    4|    4|
|Mazda RX4 Wag     | 21.0|   6|  160| 110| 3.90| 2.875| 17.02|  0|  1|    4|    4|
|Datsun 710        | 22.8|   4|  108|  93| 3.85| 2.320| 18.61|  1|  1|    4|    1|
|Hornet 4 Drive    | 21.4|   6|  258| 110| 3.08| 3.215| 19.44|  1|  0|    3|    1|
|Hornet Sportabout | 18.7|   8|  360| 175| 3.15| 3.440| 17.02|  0|  0|    3|    2|
|Valiant           | 18.1|   6|  225| 105| 2.76| 3.460| 20.22|  1|  0|    3|    1|


