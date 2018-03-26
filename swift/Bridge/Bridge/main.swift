import Foundation

// Bridge pattern is good for run time binding of implementation
var openGLApi: OpenGLAPI = OpenGLAPI()
var directXApi: DirectXAPI = DirectXAPI()

var circle: Circle = Circle(10, 10, 10, openGLApi)
circle.draw()

circle = Circle(10, 5, 4, directXApi)
circle.draw()

var rect: Rectangle = Rectangle(10, 10, 10, 10, openGLApi)
rect.draw()

rect = Rectangle(10, 10, 10, 10, directXApi)
rect.draw()
