import Foundation

public class Rectangle : Shape {
    var x: Int = 0
    var y: Int = 0
    var width: Int = 0
    var height: Int = 0
    
    convenience init(_ x: Int, _ y: Int, _ width: Int, _ height: Int, _ graphicsApi: GraphicsAPI) {
        self.init(graphicsApi)
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
    
    override func draw() -> Void {
        self.graphicsApi.drawRectangle(x, y, width, height)
    }
}
