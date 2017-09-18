#import "SingletonClass.h"

@implementation SingletonClass

// GCD based solution
+(instancetype)getInstance {
    static SingletonClass *instance = nil;
    static dispatch_once_t onceToken;
    // dispatch_once ensures only one time following code will execute so this is GCD based solution
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

// Synchronized based solution
/*
+(instancetype)getInstance {
    static SingletonClass *instance = nil;
    @synchronized (self) {
        if(nil == instance)
            instance = [[self alloc] init];
    }
    return instance;
}
*/

-(instancetype)init {
    if(self = [super init]) {
        // Do necessary init stuffs
    }
    return self;
}

-(void)testMethod {
    NSLog(@"Hi");
}

@end
