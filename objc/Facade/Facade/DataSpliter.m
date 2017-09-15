#import "DataSpliter.h"

@implementation DataSpliter {
    int packetSize;
}

-(instancetype)initWithPacketSize:(int)size {
    if(self = [super init]) {
        packetSize = size;
    }
    return self;
}

-(NSArray*)splitData:(NSString*)data {
    int dataLen = (int)data.length;
    NSMutableArray* retList = [[NSMutableArray alloc] init];
    for (int i=0; i < dataLen; i += packetSize) {
        int len = (i + packetSize > dataLen) ? (dataLen - i) : packetSize;
        [retList addObject:[data substringWithRange:NSMakeRange(i, len)]];
    }
    return retList;
}

@end
