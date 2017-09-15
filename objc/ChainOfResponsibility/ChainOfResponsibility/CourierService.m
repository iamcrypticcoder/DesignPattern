#import "CourierService.h"

@implementation CourierService {
    Divison *parentDivison;
}

-(instancetype)init {
    if(self = [super init]) {
        parentDivison = [[GeneralDivison alloc] init];
        Divison* div1 = [[PercelDivisonOne alloc] init];
        Divison* div2 = [[PercelDivisonTwo alloc] init];
        [div1 addNextDivison:div2];
        
        Divison* div3 = [[MoneyDivison alloc] init];
        [parentDivison addNextDivison:div1];
        [parentDivison addNextDivison:div3];
    }
    return self;
}

-(void)processOrder:(Request*)request {
    [parentDivison handle:request];
}

@end
