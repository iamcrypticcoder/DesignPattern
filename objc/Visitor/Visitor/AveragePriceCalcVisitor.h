#import <Foundation/Foundation.h>
#import "LibraryVisitor.h"
#import "Book.h"
#import "Library.h"

@interface AveragePriceCalcVisitor : NSObject<LibraryVisitor>

-(instancetype)init;
-(double)getAvgPrice;

@end
