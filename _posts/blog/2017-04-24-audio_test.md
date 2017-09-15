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

Here are a couple of audio files (pulmonic consonants between two vowels).  

<audio controls>
  <source src="/audio/arda.wav">
<p>Your browser does not support audio playback, download the file:
  <a href="/audio/arda.wav">WAV</a></audio>  

Here is some text to break them up.  

<audio id="yourAudio" preload='none'>
    <source src='/audio/aGa.wav' type='audio/wav' />
</audio>
<a href="#" id="audioControl">play!</a>
And add some functionality:

var yourAudio = document.getElementById('yourAudio'),
    ctrl = document.getElementById('audioControl');

ctrl.onclick = function () {

    // Update the Button
    var pause = ctrl.innerHTML === 'pause!';
    ctrl.innerHTML = pause ? 'play!' : 'pause!';

    // Update the Audio
    var method = pause ? 'pause' : 'play';
    yourAudio[method]();

    // Prevent Default Action
    return false;
};

  
## Can I use an waveform as the image?
This is an open question.


