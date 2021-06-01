function playSound(event) {
  const audio = document.querySelector(`audio[datakey="${event.keyCode}"]`);
  const key = document.querySelector(`.key[datakey="${event.keyCode}"]`);
  if(!audio) return; // stop the function
  audio.currentTime = 0; // rewind to the start
  audio.play()
  key.classList.add('playing');
  setTimeout(removePlaying, 100);
  function removePlaying() {
    key.classList.remove('playing');
  };
};

window.addEventListener('keydown', playSound);