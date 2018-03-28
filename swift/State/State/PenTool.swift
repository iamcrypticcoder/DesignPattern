import Foundation

class PenTool : AbstractTool {
    var sPoint: Point?
    var ePoint: Point?
    var mouseDown: Bool = false
    
    init() {
        
    }
    
    func mouseTo(_ point: Point) -> Void {
        if mouseDown {
            print("Print a LINE from start point to current point")
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
