#import <Foundation/Foundation.h>

@interface SingletonClass : NSObject

+(id)getInstanceWay1;
+(id)getInstanceWay2;

// Make constructor unavailable equivalent to private
-(instancetype)init NS_UNAVAILABLE;

-(void) testMethod;

@end

@implementation SingletonClass

// GCD based solution
+(instancetype)getInstanceWay1 {
    static SingletonClass *instance = nil;
    static dispatch_once_t onceToken;
    // dispatch_once ensures only one time following code will execute so this is GCD based solution
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

// Synchronized based solution
+(instancetype)getInstanceWay2 {
    static SingletonClass *instance = nil;
    @synchronized (self) {
        if(nil == instance)
            instance = [[self alloc] init];
    }
    return instance;
}

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SingletonClass *obj = [SingletonClass getInstanceWay1];
        [obj testMethod];
        
        //SingletonClass *obj2 = [[SingletonClass alloc] init];
        //[obj2 testMethod];
        
    }
    return 0;
}
