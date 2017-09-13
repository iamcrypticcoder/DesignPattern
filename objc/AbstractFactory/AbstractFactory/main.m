#import <Foundation/Foundation.h>

@protocol Button <NSObject>
-(void) setTitle:(NSString*)title;
-(void) show;
@end

@protocol Window <NSObject>
-(void) setTitle:(NSString*)title;
-(void) show;
@end

@interface WinButton : NSObject<Button>
@property(nonatomic, strong) NSString *title;
@end

@implementation WinButton
-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing Windows style button [Title: %@]", _title);
}
@end

@interface OSXButton : NSObject<Button>
@property(nonatomic, strong) NSString *title;
@end

@implementation OSXButton
-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing OSX style button [Title: %@]", _title);
}
@end

@interface WinWindow : NSObject<Window>
@property(nonatomic, strong) NSString *title;
@end

@implementation WinWindow
-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing OSX style button [Title: %@]", _title);
}
@end

@interface OSXWindow : NSObject<Window>
@property(nonatomic, strong) NSString *title;
@end

@implementation OSXWindow
-(void) setTitle:(NSString*)title {
    _title = title;
}
-(void) show {
    NSLog(@"Showing OSX style button [Title: %@]", _title);
}
@end

@protocol AbstractGUIFactory <NSObject>

-(Button)

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"AbstractFactory");
        [Mahbub print];
    }
    return 0;
}
