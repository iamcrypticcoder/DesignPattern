#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Rectangle.h"
#import "OpenGLAPI.h"
#import "DirectXAPI.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Bridge pattern is good for run time binding of implementation
        OpenGLAPI *openGLApi = [[OpenGLAPI alloc] init];
        DirectXAPI *directXApi = [[DirectXAPI alloc] init];
        
        Circle *circle = [[Circle alloc] initWith:10 y:10 radius:10 graphicsApi:openGLApi];
        [circle draw];
        
        circle = [[Circle alloc] initWith:10 y:5 radius:4 graphicsApi:directXApi];
        [circle draw];
        
        Rectangle *rect = [[Rectangle alloc] initWith:10 y:10 width:10 height:10 graphicsApi:openGLApi];
        [rect draw];
        
        rect = [[Rectangle alloc] initWith:10 y:10 width:10 height:10 graphicsApi:directXApi];
        [rect draw];
    }
    return 0;
}
