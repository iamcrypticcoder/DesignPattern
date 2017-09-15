#import "SellCommand.h"

@implementation SellCommand

-(instancetype)initWithBook:(Book*)book {
    if(self = [super init]) {
        _book = book;
    }
    return self;
}

-(void)execute {
    [_book sell];
}

@end
