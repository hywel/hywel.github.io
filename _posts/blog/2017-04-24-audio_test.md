---
layout: post
title: Test of HTML5 audio in Jekyll 
status: process
published: true
modified:
categories: blog
excerpt:
tags: [audio, html5]
share: true
header:
  image: /images/waveform.jpg
date: 2017-04-24T17:36:09+10:00
---

# A test of HTML5 audio in Jekyll

Here is an audio file (pulmonic consonant between two vowels).  

<audio controls="controls" tabindex="0">
    <source src="/audio/arda.mp3" type="audio/mpeg">
    <source src="/audio/arda.wav" type="audio/wav">
    Your browser does not support the HTML5 Audio element.
</audio>

## Can I use an waveform as the image?
This is an open question?

<audio controls="controls">
    <source src="/audio/aGa.mp3" type="audio/mpeg">
    <source src="/audio/aGa.ogg" type="audio/ogg">
    Your browser does not support the HTML5 Audio element.
</audio>

## Using Java Script

<script src="//cdnjs.cloudflare.com/ajax/libs/wavesurfer.js/1.4.0/wavesurfer.min.js"></script>

<h1>Example applications</h1>

<h2 id="zoom">Zoom</h2>

<p data-height="243" data-theme-id="0" data-slug-hash="GozaaG" data-default-tab="result" data-user="katspaugh" class='codepen'>See the Pen <a href='http://codepen.io/katspaugh/pen/GozaaG/'>wavesurfer.js zoom</a> by katspaugh (<a href='http://codepen.io/katspaugh'>@katspaugh</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
  <script async src="//assets.codepen.io/assets/embed/ei.js"></script>

  <p>
    The zoom example shows how to use the <code>zoom</code> method and an HTML5 slider to zoom the waveform in and out.
  </p>


