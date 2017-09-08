---
layout: post
title: Test of HTML5 audio in Jekyll 
status: process
published: true
modified:
categories: blog
excerpt:
tags: []
share: true
header:
  image: /images/waveform.jpg
date: 2017-04-24T17:36:09+10:00
---

# A test of HTML5 audio in Jekyll

Here are a couple of audio files (pulmonic consonants between two vowels).  

<audio controls>
  <source src="/audio/arda.wav">
<p>Your browser does not support audio playback, download the file:
  <a href="/audio/arda.wav">WAV</a></audio>  

Here is some text to break them up.

<audio controls id="audio_play">
  <source src="/audio/aGa.wav" type="audio/wav" />
  <source src="/audio/aGa.ogg" type="audio/ogg" />
  <source src="/audio/aGa.mp3" type="audio/mpeg" />
  <p>Your browser does not support audio playback, download the file:
  <a href="/audio/aGa.wav">WAV</a>
  </audio>
  <img src="/audio/img/play.jpg" onClick="document.getElementById('audio_play').play(); return false;" />
  <img src="/audio/img/pause.png" onClick="document.getElementById('audio_play').pause(); return false;" />
  
## Can I use an waveform as the image?
This is an open question.
