#import "BuyCommand.h"

@implementation BuyCommand

-(instancetype)initWithBook:(Book*)book {
    if(self = [super init]) {
        _book = book;
    }
    return self;
}

-(void)execute {
    [_book buy];
}

@end
