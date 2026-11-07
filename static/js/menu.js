document.documentElement.classList.add('js');

const toggle = document.querySelector('.mobile-menu-toggle');
const menu = document.querySelector('#main-navigation');

if (toggle && menu) {
    function closeMenu() {
        menu.classList.remove('is-open');
        toggle.setAttribute('aria-expanded', 'false');
    }

    toggle.addEventListener('click', function() {
        const isOpen = menu.classList.toggle('is-open');
        toggle.setAttribute('aria-expanded', String(isOpen));
    });

    menu.addEventListener('click', function(event) {
        if (event.target.closest('a')) closeMenu();
    });

    document.addEventListener('keydown', function(event) {
        if (event.key === 'Escape' && menu.classList.contains('is-open')) {
            closeMenu();
            toggle.focus();
        }
    });
}
