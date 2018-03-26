import Foundation

public class Circle : Shape {
    var x: Int = 0
    var y: Int = 0
    var radius: Int = 0
    
    convenience init(_ x: Int, _ y: Int, _ radius: Int, _ graphicsApi: GraphicsAPI) {
        self.init(graphicsApi)
        self.x = x
        self.y = y
        self.radius = radius
    }
    
    override func draw() -> Void {
        self.graphicsApi.drawCircle(self.x, self.y, self.radius)
    }
}
