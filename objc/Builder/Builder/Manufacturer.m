#import "Manufacturer.h"

@implementation Manufacturer

-(Computer*)getComputer {
    return [_computerBuilder getComputer];
}

-(void)constructComputer {
    [_computerBuilder createComputer];
    [_computerBuilder buildCPU];
    [_computerBuilder buildMotherboard];
    [_computerBuilder buildRAM];
    [_computerBuilder buildStorage];
    [_computerBuilder buildGraphicsCard];
}

@end
