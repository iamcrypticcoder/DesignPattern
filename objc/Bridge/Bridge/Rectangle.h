#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Rectangle : Shape

@property (atomic) int x;
@property (atomic) int y;
@property (atomic) int width;
@property (atomic) int height;

-(instancetype)initWith:(int)x
                      y:(int)y
                  width:(int)width
                 height:(int)height
            graphicsApi:(id<GraphicsAPI>)api;
@end
