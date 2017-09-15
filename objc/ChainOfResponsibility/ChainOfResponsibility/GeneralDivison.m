#import "GeneralDivison.h"

@implementation GeneralDivison

-(void)handle:(Request*)request {
    if(request.weight <= 10 && request.money <= 1000)
        [self processRequest];
    else [super handle:request];
}

-(void)processRequest {
    NSLog(@"This request is processed by -- General Divison");
}

@end
