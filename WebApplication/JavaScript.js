document.addEventListener('DOMContentLoaded', function () {
    let checkbox = document.getElementById('checkbox');
    let card = document.getElementById('card');

    checkbox.addEventListener('change', function () {
        if (this.checked) {
            card.classList.add('rotate');
        } else {
            card.classList.remove('rotate');
        }
    });
});
