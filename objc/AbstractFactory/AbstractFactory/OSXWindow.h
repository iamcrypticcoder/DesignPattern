#import <Foundation/Foundation.h>
#import "Window.h"

@interface OSXWindow : NSObject<Window>

@property(nonatomic, strong) NSString *title;

@end
