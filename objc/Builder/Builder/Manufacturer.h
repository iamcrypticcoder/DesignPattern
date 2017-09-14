#import <Foundation/Foundation.h>
#import "ComputerBuilder.h"

@interface Manufacturer : NSObject

@property(strong, nonatomic) ComputerBuilder* computerBuilder;

-(Computer*)getComputer;
-(void)constructComputer;

@end
