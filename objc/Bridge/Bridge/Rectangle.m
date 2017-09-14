#import "Rectangle.h"

@implementation Rectangle

-(instancetype)initWith:(int)x
                      y:(int)y
                  width:(int)width
                 height:(int)height
            graphicsApi:(id<GraphicsAPI>)api
{
    if(self = [super initWithGraphicsAPI:api]) {
        _x = x;
        _y = y;
        _width = width;
        _height = height;
    }
    return self;
}

-(void)draw {
    [self.graphicsApi drawRectangle:_x y:_y width:_width height:_height];
}

@end
