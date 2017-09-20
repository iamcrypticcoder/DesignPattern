#import "WifiConnection.h"

@implementation WifiConnection

-(void) makeReady {
    NSLog(@"Wifi is being ready...");
    self.isReady = YES;
}

-(BOOL) isConnectionReady {
    return self.isReady;
}

-(void) sendData:(NSString*)data {
    NSLog(@"Data sent over Wifi");
}
@end
