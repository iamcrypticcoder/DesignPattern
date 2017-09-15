#import "PercelDivisonTwo.h"

@implementation PercelDivisonTwo

-(void)handle:(Request*)request {
    if(request.weight > 0)
        [self processRequest];
}

-(void)processRequest {
    NSLog(@"This request is processed by -- ParcelDivisonTwo");
}

@end
