#import "WinFactory.h"

@implementation WinFactory

-(id<Button>)createButton {
    return [[WinButton alloc] init];
}
-(id<Window>)createWindow {
    return [[WinWindow alloc] init];
}

@end
