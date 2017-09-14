#import "WinWindow.h"

@implementation WinWindow

-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing Windows style window [Title: %@]", _title);
}

@end
