I define an API of an abstract gradient paint. All gradient paints should use me and implement all my methods.

I am responsible for setting of gradient stops. Since I just define an abstract api, my implementors should provide concrete logic.

Like any other paint I must not be instantiated by onyone except canvas.

Public API and Key Messages

- stops: set gradient stops encoded as an array of associations [Number -> Color]

	I am an abstract api. See my users for examples.