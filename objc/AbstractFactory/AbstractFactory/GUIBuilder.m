#import "GUIBuilder.h"

@implementation GUIBuilder {
    NSString* platformName;
    id<AbstractGUIFactory> guiFactory;
}

-(instancetype)initWithPlatform:(NSString *)platform {
    if(self = [super init]) {
        platformName = platform;
    }
    return self;
}

-(void)initGUIFactory {
    if(nil != guiFactory) return;
    if([platformName isEqualToString:@"Windows"]) guiFactory = [[WinFactory alloc] init];
    else guiFactory = [[OSXFactory alloc] init];
}

-(id<Window>)buildWindow {
    [self initGUIFactory];
    return [guiFactory createWindow];
}

-(id<Button>)buildButton {
    [self initGUIFactory];
    return [guiFactory createButton];
}

@end
