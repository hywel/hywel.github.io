var wavesurfer = WaveSurfer.create({
  container: '#waveform',
  waveColor: 'red',
  progressColor: 'purple'
});

wavesurfer.load('//hywel.github.io/audio/arda.wav');

var slider = document.querySelector('#slider');

slider.oninput = function () {
  var zoomLevel = Number(slider.value);
  wavesurfer.zoom(zoomLevel);
};