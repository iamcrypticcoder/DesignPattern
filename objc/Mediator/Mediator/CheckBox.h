#import <Foundation/Foundation.h>
#import "Widget.h"

@interface CheckBox : Widget

@property(assign, atomic, readonly) BOOL state;

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med;
-(void)setCheckedStatus:(BOOL)status;
-(void)toString;

@end
