ready = ->
    Typed.new '.element',
        strings: [
            'Who I am is always changing ^1000, as is what I do.',
            'So think of this site as a snapshot of my mind and my work.',
            "But don't get too comfortable. ^1000 Things will invariably change."
        ]
        typeSpeed: 0
        fadeOut: true
        fadeOutDelay: 2000
        loop: true
    return

$(document).ready ready
$(document).on 'turbolinks:load', ready
