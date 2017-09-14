#import "OpenGLAPI.h"

@implementation OpenGLAPI

-(void)drawRectangle:(int)x y:(int)y width:(int)w height:(int)h {
    NSLog(@"Rectangle drawn by OpenGL API");
}

-(void)drawCircle:(int)x y:(int)y radius:(int)r {
    NSLog(@"Circle drawn by OpenGL API");
}

@end
