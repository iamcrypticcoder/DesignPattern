#import <Foundation/Foundation.h>
#import "Protocol.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Protocol* protocol = [[Protocol alloc] initWith:CompressionAlgorithm_BZIP
                                             packetSize:10];
        [protocol sendData:@"I am a good boy"];
    }
    return 0;
}
