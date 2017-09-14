#import "Computer.h"

@implementation Computer

-(void)printSpec {
    NSLog(@"------------------------------------------------");
    NSLog(@"CPU: %@", _cpu);
    NSLog(@"Motherboard Model: %@", _motherboardModel);
    NSLog(@"Ram Value: %@", _ramValue);
    NSLog(@"Storage Value: %@", _storageValue);
    NSLog(@"Graphics Card Model: %@", _graphicsCardModel);
    NSLog(@"------------------------------------------------");
}

@end
