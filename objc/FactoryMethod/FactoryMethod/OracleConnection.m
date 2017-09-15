#import "OracleConnection.h"

@implementation OracleConnection

-(void)connect {
    NSLog(@"Connected to Oracle Database");
}

-(void)query:(NSString*)queryString {
    NSLog(@"Oracle: Query Completed: %@", queryString);
}

@end
