import Foundation

class TriangleTool : AbstractTool {
    var sPoint: Point?
    var ePoint: Point?
    var mouseDown: Bool = false
    
    init() {
        
    }
    
    func mouseTo(_ point: Point) -> Void {
        if mouseDown {
            print("Print a TRIANGLE from start point to current point")
        }
    }
    
    func mouseDown(_ point: Point) -> Void {
        sPoint = point
        mouseDown = true
    }
    
    func mouseUp(_ point: Point) -> Void {
        ePoint = point
        mouseDown = false
    }
}
