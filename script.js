let prevScrollPos = window.pageYOffset;

window.onscroll = function() {
  const currentScrollPos = window.pageYOffset;
  const header = document.querySelector('header');
  const footer = document.querySelector('footer');

  if (prevScrollPos > currentScrollPos) {
    header.style.top = '0';
    footer.style.bottom = '0';
  } else {
    header.style.top = '-100px';
    footer.style.bottom = '-100px';
  }

  prevScrollPos = currentScrollPos;
}