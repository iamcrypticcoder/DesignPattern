#import "BluetoothConnection.h"

@implementation BluetoothConnection

-(void) makeReady {
    NSLog(@"Bluetooth is being ready...");
    self.isReady = YES;
}

-(BOOL) isConnectionReady {
    return self.isReady;
}

-(void) sendData:(NSString*)data {
    NSLog(@"Data sent over Bluetooth");
}

@end
