#import "MouseCursor.h"
#import "AbstractTool.h"

@implementation MouseCursor {
    id<AbstractTool> tool;
}

-(instancetype)init {
    if(self = [super init]) {
        tool = [[PenTool alloc] init];
    }
    return self;
}

-(void)mouseTo:(Point)p {
    [tool mouseTo:p];
}

-(void)mouseDown:(Point)p {
    [tool mouseDown:p];
}

-(void)mouseUp:(Point)p {
    [tool mouseUp:p];
}

-(void)usePenTool {
    tool = [[PenTool alloc] init];
}

-(void)useTriangleTool {
    tool = [[TriangleTool alloc] init];
}


@end
