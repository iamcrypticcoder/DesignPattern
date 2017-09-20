#import "Connection.h"

@implementation Connection

-(instancetype)init {
    if(self = [super init]) {
        _isReady = NO;
    }
    return self;
}

@end
