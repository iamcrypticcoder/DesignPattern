#import "EthernetConnection.h"
#include <stdlib.h>

@implementation EthernetConnection

-(void)makeReady {
    NSLog(@"Making Ethernet Ready...");
}

-(BOOL)isReady {
    return (arc4random_uniform(100) % 2);
}

-(void)sendPacket:(NSString*)packet {
    if(packet.length > 10) return;
    NSLog(@"Packet sent. [%@]", packet);
}

@end
