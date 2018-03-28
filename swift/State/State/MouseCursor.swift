import Foundation

class MouseCursor {
    var tool: AbstractTool
    
    init() {
        tool = PenTool()
    }
    
    func mouseTo(_ p: Point) -> Void {
        tool.mouseTo(p)
    }
    
    func mouseDown(_ p: Point) -> Void {
        tool.mouseDown(p)
    }
    
    func mouseUp(_ p: Point) -> Void {
        tool.mouseUp(p)
    }
    
    func usePenTool() -> Void {
        tool = PenTool()
    }
    
    func useTriangleTool() -> Void {
        tool = TriangleTool()
    }
    
}
