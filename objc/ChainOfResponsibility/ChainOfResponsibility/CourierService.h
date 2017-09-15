#import <Foundation/Foundation.h>
#import "Request.h"
#import "GeneralDivison.h"
#import "PercelDivisonOne.h"
#import "PercelDivisonTwo.h"
#import "MoneyDivison.h"

@interface CourierService : NSObject

-(instancetype)init;
-(void)processOrder:(Request*)request;

@end
