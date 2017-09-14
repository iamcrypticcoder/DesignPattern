#import <Foundation/Foundation.h>
#import "GUIBuilder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GUIBuilder *guiBuilder = [[GUIBuilder alloc] initWithPlatform:@"Windows"];
        id<Window> window = [guiBuilder buildWindow];
        [window setTitle:@"Mahbub"];
        [window show];
        
        id<Button> button = [guiBuilder buildButton];
        [button setTitle:@"Connect"];
        [button show];
    }
    return 0;
}
