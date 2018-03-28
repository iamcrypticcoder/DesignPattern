import Foundation

/*
func makePoint(_ x: Int, _ y: Int) {
    let ret: Point;
    ret.h = x
    ret.v = y
    return ret
}
*/

let mouseCursor: MouseCursor = MouseCursor()
mouseCursor.mouseDown(Point(0, 0))
mouseCursor.mouseTo(Point(5, 5))
mouseCursor.mouseUp(Point(5, 5))

mouseCursor.useTriangleTool()

mouseCursor.mouseDown(Point(0, 0))
mouseCursor.mouseTo(Point(5, 5))
mouseCursor.mouseUp(Point(5, 5))
