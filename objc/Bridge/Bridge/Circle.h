#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Circle : Shape

@property (atomic) int x;
@property (atomic) int y;
@property (atomic) int radius;

-(instancetype)initWith:(int)x
                      y:(int)y
                 radius:(int)r
            graphicsApi:(id<GraphicsAPI>)api;

@end
