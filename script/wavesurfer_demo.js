var wavesurfer = WaveSurfer.create({
  container: '#waveform',
  waveColor: 'red',
  progressColor: 'purple'
});

wavesurfer.load('../audio/arda.wav');

var slider = document.querySelector('#slider');

slider.oninput = function () {
  var zoomLevel = Number(slider.value);
  wavesurfer.zoom(zoomLevel);
};