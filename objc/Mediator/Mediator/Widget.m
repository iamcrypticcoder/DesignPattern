#import "Widget.h"

@implementation Widget

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med {
    if(self = [super init]) {
        _med = med;
    }
    return self;
}

@end
