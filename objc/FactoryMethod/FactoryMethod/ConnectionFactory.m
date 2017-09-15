#import "ConnectionFactory.h"

@implementation ConnectionFactory

+(id<DatabaseConnection>) getConnection:(NSString*)dbServer {
    if([dbServer isEqualToString:@"mysql"]) return [[MySQLConnection alloc] init];
    if([dbServer isEqualToString:@"mssql"]) return [[MSSQLConnection alloc] init];
    if([dbServer isEqualToString:@"oracle"]) return [[OracleConnection alloc] init];
    return nil;
}

@end
