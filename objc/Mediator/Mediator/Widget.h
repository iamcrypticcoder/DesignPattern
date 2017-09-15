#import <Foundation/Foundation.h>
#import "DialogBoxMediator.h"

@class Widget;

@interface Widget : NSObject

@property (nonatomic, strong) id<DialogBoxMediator> med;

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med;

@end
