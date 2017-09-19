#import "Library.h"

@implementation Library

-(instancetype)initWith:(NSString*)name {
    if(self = [super init]) {
        _name = name;
        _bookList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addBook:(Book*)book {
    [_bookList addObject:book];
}

-(void)accept:(id<LibraryVisitor>)visitor {
    for(Book* book in _bookList)
        [visitor visitBook:book];
    [visitor visitLibrary:self];
}

@end
