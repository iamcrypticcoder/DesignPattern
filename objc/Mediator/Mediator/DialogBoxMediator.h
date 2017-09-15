#import <Foundation/Foundation.h>
#import "Widget.h"

@class Widget;

@protocol DialogBoxMediator <NSObject>

-(void)onChange:(Widget*)originator;

@end
