#import <Foundation/Foundation.h>

@interface SingletonClass : NSObject

+(id)getInstance;
+(id)getInstance;

// Make constructor unavailable equivalent to private
-(instancetype)init NS_UNAVAILABLE;

-(void) testMethod;

@end
