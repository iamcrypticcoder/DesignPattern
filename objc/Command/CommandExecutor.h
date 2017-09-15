#import <Foundation/Foundation.h>
#import "Command.h"

@interface CommandExecutor : NSObject

-(instancetype)init;
-(void)addCommand:(id<Command>)cmd;
-(void)runCommand;

@end
