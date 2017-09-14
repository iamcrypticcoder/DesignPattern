#import "Shape.h"

@implementation Shape

-(instancetype)initWithGraphicsAPI:(id<GraphicsAPI>)api {
    if(self = [super init]) {
        _graphicsApi = api;
    }
    return self;
}

@end
