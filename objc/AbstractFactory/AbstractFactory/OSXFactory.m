#import "OSXFactory.h"

@implementation OSXFactory

-(id<Button>)createButton {
    return [[OSXButton alloc] init];
}
-(id<Window>)createWindow {
    return [[OSXWindow alloc] init];
}

@end
