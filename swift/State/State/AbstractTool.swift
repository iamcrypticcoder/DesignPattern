import Foundation

protocol AbstractTool {
    func mouseTo(_ point: Point) -> Void
    func mouseDown(_ point: Point) -> Void
    func mouseUp(_ point: Point) -> Void
}
