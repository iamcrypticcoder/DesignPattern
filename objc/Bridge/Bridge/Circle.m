#import "Circle.h"

@implementation Circle

-(instancetype)initWith:(int)x y:(int)y radius:(int)r graphicsApi:(id<GraphicsAPI>)api {
    if (self = [super initWithGraphicsAPI:api]) {
        _x = x;
        _y = y;
        _radius = r;
    }
    return self;
}

-(void)draw {
    [self.graphicsApi drawCircle:_x y:_y radius:_radius];
}

@end
