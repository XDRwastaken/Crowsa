LocalJavascipt = <<-JS
document.addEventListener('DOMContentLoaded', function() {
    const button = document.getElementById('greetButton');
    const message = document.getElementById('message');

    button.addEventListener('click', function() {
        message.textContent = "You've clicked the button!11!1!";
    });
});
JS
