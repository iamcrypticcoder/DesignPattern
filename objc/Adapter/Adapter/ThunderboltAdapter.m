#import "ThunderboltAdapter.h"

@implementation ThunderboltAdapter {
    id<Connection> connection;
}

-(instancetype)initWithConnection:(id<Connection>)conn {
    if(self = [super init]) {
        connection = conn;
    }
    return self;
}

-(void)sendData:(NSString*)data {
    if([connection isKindOfClass:[EthernetConnection class]]) {
        for(int i=0; i < data.length; i += 10) {
            long len = (i + 10) > data.length ? data.length - i : 10;
            [connection sendPacket:[data substringWithRange:NSMakeRange(i, len)]];
        }
        return;
    }
    
    if([connection isKindOfClass:[MobileDataConnection class]]) {
        for(int i=0; i < data.length; i += 5) {
            long len = (i + 5) > data.length ? data.length - i : 5;
            [connection sendPacket:[data substringWithRange:NSMakeRange(i, len)]];
        }
        return;
    }
}

@end
