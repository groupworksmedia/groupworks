//
//  disqus.js
//  Flavournomics
//
//  Created by Michael Kir on 20/09/2024.
//

(function() {
    var t = document,
        e = t.createElement("script");
    e.src = "https://flavournomics.disqus.com/embed.js", e.setAttribute("data-timestamp", +new Date), (t.head || t.body).appendChild(e)
})();
