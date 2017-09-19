#import <Foundation/Foundation.h>
#import "LibraryVisitor.h"
#import "Book.h"
#import "Library.h"

@interface AveragePageCalcVisitor : NSObject<LibraryVisitor>

-(instancetype)init;
-(double)getAvgPage;

@end
