#import <Foundation/Foundation.h>
#import "Request.h"

@interface Divison : NSObject

-(void) addNextDivison:(Divison*)divison;
-(void) handle:(Request*)request;
-(void) processRequest;

@end
