#import <Foundation/Foundation.h>
#import "WinFactory.h"
#import "OSXFactory.h"

@interface GUIBuilder : NSObject

-(instancetype)initWithPlatform:(NSString*)platform;
-(id<Window>)buildWindow;
-(id<Button>)buildButton;

@end
