#import "PacketSender.h"

@implementation PacketSender

-(void)sendPacket:(NSString*)packet {
    NSLog(@"Packet sent: [%@]", packet);
}

@end
