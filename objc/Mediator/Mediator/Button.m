#import "Button.h"

@implementation Button

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med {
    if(self = [super initWithMediator:med]) {
        [super initWithMediator:med];
        _title = @"";
        _enabledState = YES;
    }
}

-(void)setTitle:(NSString*)title {
    _title = title;
}

-(void)setEnabledState:(BOOL)state {
    _enabledState = state;
}

-(NSString*)toString {
    return [[NSString alloc] initWithFormat:@"Title: %@, State: %@", _title, _enabledState];
}

@end
