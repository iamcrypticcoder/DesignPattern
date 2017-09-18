#import "TriangleTool.h"

@implementation TriangleTool {
    Point sPoint, ePoint;
    BOOL mouseDown;
}

-(instancetype)init {
    if(self = [super init]) {
        mouseDown = NO;
    }
    return self;
}

-(void)mouseTo:(Point) p {
    if(mouseDown) {
        NSLog(@"Print a TRIANGLE from start point to current point");
    }
}

-(void)mouseDown:(Point) p {
    sPoint = p;
    mouseDown = YES;
}

-(void)mouseUp:(Point) p {
    ePoint = p;
    mouseDown = NO;
}

@end
