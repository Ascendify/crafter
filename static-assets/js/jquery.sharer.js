(function ($) {

$.footerSharer = {
    "networks": {
        "facebook": {
            "name": "Facebook",
            "url": "http://www.facebook.com/share.php?image=%image%&title=%title%&description=%description%&u=%url%"
        },
        "twitter": {
            "name": "Twitter",
            "url": "https://twitter.com/share?url=%url%&text=%title%+%description%"
        },
        "linkedin": {
            "name": "LinkedIn",
            "url": "http://www.linkedin.com/shareArticle?mini=true&url=%url%&title=%title%&summary=%description%&source=in1.com"
        }
    },
    "options": {
        "networks": ["facebook", "linkedin"],
        "twitter": ["twitter"],
        "template": $('<a class="sharer-icon" />'),
        "class": "sharer-icon-%network.id%",
        "label": "Share on %network.name%",
        "title": null,
        "description": null,
        "url": null,
        "image": null
    }
};

$.fn.footerSharer = function () {
    var options = $.extend({}, $.footerSharer.options, options);

    return this.each(function () {
        var container = $(this);

        for (var i = 0; i < options["networks"].length; i++) {
            var network = options["networks"][i],
                networkData = $.footerSharer.networks[network],
                button = options["template"].clone();

            button
                .data("network", networkData)
                .addClass(options["class"].replace("%network.id%", network))
                .attr("title", options["label"].replace("%network.name%", networkData["name"]))
                .click(function () {
                    var networkData = $(this).data("network"),
                        baseURL = getBaseURL(),
                        popup = networkData["url"]
                            .replace("%title%", encodeURIComponent($('[property="og:title"]').attr('content')))
                            .replace("%description%", encodeURIComponent($('[property="og:description"]').attr('content')))
                            .replace("%url%", encodeURIComponent(baseURL))
                            .replace("%image%", encodeURIComponent($('[property="og:image"]').attr('content')))

                    window.open(popup, "footerSharer", "toolbar=0,resizable=1,status=0,width=640,height=528");
                })
                .appendTo(container);
        }

        //twitter settings
        for (var i = 0; i < options["twitter"].length; i++) 
        {
            var network = options["twitter"][i],
                networkData = $.sharer.networks[network],
                button = options["template"].clone();

            button
                .data("network", networkData)
                .addClass(options["class"].replace("%network.id%", network))
                .attr("title", options["label"].replace("%network.name%", networkData["name"]))
                .click(function () {
                    var networkData = $(this).data("network"),
                        baseURL = getBaseURL(),
                        popup = networkData["url"]
                            .replace("%title%", encodeURIComponent($('[property="og:title"]').attr('content')))
                            .replace("%description%", encodeURIComponent(", " + $('[property="og:description"]').attr('content').substring(0,75)) + "... ")
                            .replace("%url%", encodeURIComponent(baseURL))
                            .replace("%image%", encodeURIComponent($('[property="og:image"]').attr('content')))

                    window.open(popup, "sharer", "toolbar=0,resizable=1,status=0,width=640,height=528");
                })
                .appendTo(container);
        }
    });
};

}(jQuery));