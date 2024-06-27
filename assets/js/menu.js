document.addEventListener('DOMContentLoaded', function() {
    const menuToggle = document.querySelector('.menu-toggle');
    const mainNav = document.querySelector('header nav');

    menuToggle.addEventListener('click', function() {
        mainNav.classList.toggle('active');
    });
});