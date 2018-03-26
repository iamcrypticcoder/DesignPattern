import Foundation

public class OpenGLAPI : GraphicsAPI {
    
    func drawRectangle(_ x: Int, _ y: Int, _ width: Int, _ height: Int) {
        print("Rectangle drawn by OpenGL API")
    }
    
    func drawCircle(_ x: Int, _ y: Int, _ radius: Int) {
        print("Circle drawn by OpenGL API")
    }
}
