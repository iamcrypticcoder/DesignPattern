#import <Foundation/Foundation.h>
#import "Book.h"
#import "Visitable.h"
#import "LibraryVisitor.h"

@interface Library : NSObject<Visitable>

@property(strong, nonatomic) NSString* name;
@property(strong, nonatomic, readonly) NSMutableArray<Book*>* bookList;

-(instancetype)initWith:(NSString*)name;
-(void)addBook:(Book*)book;

@end
