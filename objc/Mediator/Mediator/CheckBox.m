#import "CheckBox.h"

@implementation CheckBox

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med {
    if(self = [super initWithMediator:med]) {
        [super initWithMediator:med];
        _state = YES;
    }
    return self;
}

-(void)setCheckedStatus:(BOOL)status {
    if(_state != status) {
        _state = status;
        [self.med onChange:self];
    }
}

-(void)toString {
    return [[NSString alloc] initWithFormat:@"State: %s",
            _state ? @"Enabled" : @"Disabled"];
}

@end
