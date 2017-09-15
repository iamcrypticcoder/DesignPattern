#import <Foundation/Foundation.h>
#import "Command.h"
#import "Book.h"

@interface SellCommand : NSObject<Command>

@property(strong, nonatomic, readonly) Book* book;

-(instancetype)initWithBook:(Book*)book;

@end
