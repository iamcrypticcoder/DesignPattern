#import "Divison.h"

@implementation Divison {
    NSMutableArray<Divison *>* nextList;
}

-(instancetype)init {
    if(self = [super init]) {
        nextList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addNextDivison:(Divison*)divison {
    [nextList addObject:divison];
}

-(void)handle:(Request*)request {
    for (Divison* d in nextList) {
        [d handle:request];
    }
}

-(void) processRequest {
    // Do nothing
}

@end
