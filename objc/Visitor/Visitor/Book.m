#import "Book.h"

@implementation Book

-(instancetype)initWith:(NSString*)name noPages:(int)noPages price:(double)price {
    if(self = [super init]) {
        _name = name;
        _noPages = noPages;
        _price = price;
    }
    return self;
}

-(void)accept:(id<LibraryVisitor>)visitor {
    [visitor visitBook:self];
}

@end
