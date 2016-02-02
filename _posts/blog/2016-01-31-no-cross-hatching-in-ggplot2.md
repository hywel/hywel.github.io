---
layout: post
title: No Cross-hatching in Ggplot2
status: publish
published: true
modified:
categories: blog
excerpt:
tags: [test, Rstudio, ggplot2]
share: true
image:
  feature: 
date: 2016-01-31T14:44:54+11:00
bibliography: bibliography.bib
---
 
After some very brief [web searching](http://stackoverflow.com/questions/2895319/how-to-add-texture-to-fill-colors-in-ggplot2?lq=1), I have reached the conclusion that it is currently not possible to apply cross-hatching effects to the fill in a `ggplot`.
 
My rather crude solution was to add this in a graphics package[^1]. Applying a "half-tone" filter in a new layer and then reducing the opacity.
 
![Figure](/figures/Figure_6_modified.png)
 
[^1]: I used *Pixelmator* on OS X but any similar tool would do.
 
This will appear in [Blythe et al., 2016][^2].
 
[^2]: I am investigating ways to parse references but this was inserted manually.
 
### References ###
Blythe, J., Mardigan, K. C., Perdjert, M. E., and Stoakes, H. (2016). Pointing out directions in Murrinhpatha. *Open Linguistics*, In Press.
 
 
