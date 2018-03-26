import Foundation

class DirectXAPI : GraphicsAPI {
    
    func drawRectangle(_ x: Int, _ y: Int, _ width: Int, _ height: Int) {
        print("Rectangle drawn by DirectXAPI API");
    }
    
    func drawCircle(_ x: Int, _ y: Int, _ radius: Int) {
        print("Circle drawn by DirectXAPI API");
    }
}
