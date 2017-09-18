#import <Foundation/Foundation.h>
#import "MouseCursor.h"

Point makePoint(int x, int y) {
    Point ret;
    ret.h = x;
    ret.v = y;
    return ret;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MouseCursor* pointer = [[MouseCursor alloc] init];
        [pointer mouseDown:makePoint(0, 0)];
        [pointer mouseTo:makePoint(5, 5)];
        [pointer mouseUp:makePoint(5, 5)];
        
        [pointer useTriangleTool];
        
        [pointer mouseDown:makePoint(0, 0)];
        [pointer mouseTo:makePoint(5, 5)];
        [pointer mouseUp:makePoint(5, 5)];
    }
    return 0;
}
