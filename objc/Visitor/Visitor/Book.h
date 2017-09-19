#import <Foundation/Foundation.h>
#import "Visitable.h"
#import "LibraryVisitor.h"

@interface Book : NSObject<Visitable>

@property(strong, nonatomic) NSString* name;
@property(assign, atomic) int noPages;
@property(assign, atomic) int price;

-(instancetype)initWith:(NSString*)name noPages:(int)noPages price:(double)price;


@end
