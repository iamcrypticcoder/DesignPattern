#import "MSSQLConnection.h"

@implementation MSSQLConnection

-(void)connect {
    NSLog(@"Connected to MSSQL Database");
}

-(void)query:(NSString*)queryString {
    NSLog(@"MSSQL: Query Completed: %@", queryString);
}

@end
