#import "CommandExecutor.h"

@implementation CommandExecutor {
    NSMutableArray<id<Command>>* nextCommands;
    NSMutableArray<id<Command>>* executedCommands;
}

-(instancetype)init {
    if(self == [super init]) {
        nextCommands = [[NSMutableArray alloc] init];
        executedCommands = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addCommand:(id<Command>)cmd {
    [nextCommands addObject:cmd];
}

-(void)runCommand {
    while(nextCommands.count > 0) {
        id<Command> cmd = [nextCommands firstObject];
        [nextCommands removeObjectAtIndex:0];
        [cmd execute];
        [executedCommands addObject:cmd];
    }
}

@end
