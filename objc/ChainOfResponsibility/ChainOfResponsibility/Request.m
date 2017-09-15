#import "Request.h"

@implementation Request

-(instancetype) initWith:(double)weight money:(double)money {
    if(self = [super init]) {
        _weight = weight;
        _money = money;
    }
    return self;
}

@end
