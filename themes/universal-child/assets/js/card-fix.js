document.addEventListener('DOMContentLoaded', function() {
    function fixCartDisplay() {
        // Forcer la hauteur automatique
        document.querySelectorAll('.cart-item').forEach(function(item) {
            item.style.height = 'auto';
            item.style.minHeight = 'auto';
            item.style.maxHeight = 'none';
            item.style.overflow = 'visible';
            item.style.marginBottom = '10px';
        });

        // Forcer les conteneurs parents
        ['.cart-overview', '.cart-items', '.cart-container'].forEach(function(selector) {
            var element = document.querySelector(selector);
            if(element) {
                element.style.height = 'auto';
                element.style.maxHeight = 'none';
                element.style.overflow = 'visible';
                element.style.display = 'block';
            }
        });
    }

    // Exécuter immédiatement
    fixCartDisplay();

    // Ré-exécuter après un court délai pour s'assurer que tout est chargé
    setTimeout(fixCartDisplay, 500);
});
