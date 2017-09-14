#import "WinButton.h"

@implementation WinButton

-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing Windows style button [Title: %@]", _title);
}

@end
