#import <Foundation/Foundation.h>
#import "AppleInc.h"
#import "Newspaper.h"
#import "Internet.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Newspaper* printMedia = [[Newspaper alloc] init];
        Internet* onlineMedia = [[Internet alloc] init];
        
        AppleInc* appl = [[AppleInc alloc] initWithFaceValue:665.45];
        [appl registerObserver:printMedia];
        [appl registerObserver:onlineMedia];
        [appl setFaceValue:660.00];
    }
    return 0;
}
