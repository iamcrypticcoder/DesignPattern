#import "MySQLConnection.h"

@implementation MySQLConnection

-(void)connect {
    NSLog(@"Connected to MySQL Database");
}

-(void)query:(NSString*)queryString {
    NSLog(@"MySQL: Query Completed: %@", queryString);
}

@end
