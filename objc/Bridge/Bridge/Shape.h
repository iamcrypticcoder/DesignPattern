#import <Foundation/Foundation.h>
#import "GraphicsAPI.h"

@interface Shape : NSObject

@property (weak, readonly) id<GraphicsAPI> graphicsApi;

-(instancetype)initWithGraphicsAPI:(id<GraphicsAPI>)graphicsApi;
-(void)draw;

@end
