/**
 * Prunier Image Optimizer
 * Optimizes product images for visitors using imgproxy
 * Does NOT run for bots (Google Shopping compatibility)
 */
(function() {
    "use strict";

    // Exit if bot detected
    if (/bot|crawl|slurp|spider|google|mediapartners|facebook|twitter|linkedin/i.test(navigator.userAgent)) {
        return;
    }

    var isMobile = /mobile|android|iphone|ipad|phone|tablet/i.test(navigator.userAgent);
    var maxWidth = isMobile ? 400 : 800;

    function optimizeImage(img) {
        var src = img.getAttribute("src") || "";

        // Skip if already optimized or not a product image
        if (!src || src.indexOf("/imgproxy/") > -1 || !src.match(/prunier\.com\/\d+-[^\s]+\.(jpg|jpeg|png|gif)/i)) {
            return;
        }

        // PrestaShop URL format: https://prunier.com/494-home_default/friendly-name.jpg
        // Real file location:    img/p/4/9/4/494-home_default.jpg
        var match = src.match(/https?:\/\/prunier\.com\/(\d+)-([^\/\s]+)\/[^\s]+\.(jpg|jpeg|png|gif)/i);
        if (match) {
            var id = match[1];
            var size = match[2];
            var ext = match[3];
            var dirs = id.split('').join('/');
            var realFile = id + '-' + size + '.' + ext;
            var localPath = 'local:/clients/client0/web1/web/img/p/' + dirs + '/' + realFile;
            var newSrc = '/imgproxy/unsafe/rs:fit:' + maxWidth + ':0/plain/' + localPath;
            img.setAttribute("data-original", src);
            img.src = newSrc;
        }
    }

    function processImages() {
        document.querySelectorAll("img").forEach(optimizeImage);
    }

    // Process images when DOM is ready
    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", processImages);
    } else {
        processImages();
    }

    // Watch for dynamically added images
    if (window.MutationObserver) {
        new MutationObserver(function(mutations) {
            mutations.forEach(function(mutation) {
                mutation.addedNodes.forEach(function(node) {
                    if (node.tagName === "IMG") {
                        optimizeImage(node);
                    } else if (node.querySelectorAll) {
                        node.querySelectorAll("img").forEach(optimizeImage);
                    }
                });
            });
        }).observe(document.body || document.documentElement, {
            childList: true,
            subtree: true
        });
    }
})();
