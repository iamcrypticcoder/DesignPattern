#import "MobileDataConnection.h"

@implementation MobileDataConnection

-(void)makeReady {
    NSLog(@"Making MobileData Ready...");
}

-(BOOL)isReady {
    return (arc4random_uniform(100) % 2);
}

-(void)sendPacket:(NSString*)packet {
    if(packet.length > 5) return;
    NSLog(@"Packet sent. [%@]", packet);
}

@end
