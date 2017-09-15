#import "PercelDivisonOne.h"

@implementation PercelDivisonOne

-(void)handle:(Request*)request {
    if(request.weight <= 100)
        [self processRequest];
    else
        [super handle:request];
}

-(void)processRequest {
    NSLog(@"This request is processed by -- ParcelDivisonOne");
}

@end
