#import "OSXWindow.h"

@implementation OSXWindow

-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing OSX style window [Title: %@]", _title);
}

@end
