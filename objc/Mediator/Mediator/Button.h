#import <Foundation/Foundation.h>
#import "DialogBoxMediator.h"

@interface Button : Widget

@property(nonatomic, strong, readonly) NSString* title;
@property(atomic, readonly) BOOL enabledState;

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med;
-(void)setTitle:(NSString*)title;
-(void)setEnabledState:(BOOL)state;
-(NSString*)toString;

@end
