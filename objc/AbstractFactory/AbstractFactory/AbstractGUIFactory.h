#import <Foundation/Foundation.h>
#import "Button.h"
#import "Window.h"

@protocol AbstractGUIFactory <NSObject>

-(id<Button>)createButton;
-(id<Window>)createWindow;

@end
