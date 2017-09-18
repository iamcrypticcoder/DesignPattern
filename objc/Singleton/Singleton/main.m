#import <Foundation/Foundation.h>
#import "SingletonClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SingletonClass *obj = [SingletonClass getInstance];
        [obj testMethod];
        //SingletonClass *obj2 = [[SingletonClass alloc] init];
        //[obj2 testMethod];
    }
    return 0;
}
