#import "MoneyDivison.h"

@implementation MoneyDivison

-(void)handle:(Request*)request {
    if(request.money > 0)
        [self processRequest];
}

-(void)processRequest {
    NSLog(@"This request is processed by -- MoneyDivison");
}

@end
