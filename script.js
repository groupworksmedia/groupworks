window.onscroll = function() {
  const header = document.querySelector('header');
  const footer = document.querySelector('footer');
  const scrollPosition = window.pageYOffset;

  if (scrollPosition > header.offsetHeight) {
    header.style.top = '-100px';
  } else {
    header.style.top = '0';
  }

  if (scrollPosition < document.body.offsetHeight - window.innerHeight - footer.offsetHeight) {
    footer.style.bottom = '0';
  } else {
    footer.style.bottom = '-100px';
  }
}