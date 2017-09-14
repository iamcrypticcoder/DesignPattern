#import "OSXButton.h"

@implementation OSXButton

-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing OSX style button [Title: %@]", _title);
}

@end
