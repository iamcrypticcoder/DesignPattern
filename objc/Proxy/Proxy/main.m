#import <Foundation/Foundation.h>
#import "ProxyImage.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ProxyImage* image1 = [[ProxyImage alloc] initWIthImageUrl:@"DUMMY_URL_1"];
        
        [image1 displayImage];
    }
    return 0;
}
