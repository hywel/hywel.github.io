---
layout: post
title: No Cross-hatching in Ggplot2
status: publish
published: true
modified:
categories: blog
excerpt:
tags: []
share: true
image:
  feature: 
date: 2016-01-31T14:44:54+11:00
bibliography: bibliography.bib
---
 
After some very brief [web searching](http://stackoverflow.com/questions/2895319/how-to-add-texture-to-fill-colors-in-ggplot2?lq=1), I have reached the conclusion that it is currently not possible to apply cross-hatching effects to the fill in a ggplot.
 
My rather crude solution was to add this in a graphics package. Applying a "half-tone" filter in a new layer and then reducing the opacity.
 
![Figure](/figures/Figure_6_modified.png)
 
This will appear in [@Blythe:2016ac].
 
# References
 
 
 
