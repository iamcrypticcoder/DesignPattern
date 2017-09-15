#import <Foundation/Foundation.h>
#import "MySQLConnection.h"
#import "MSSQLConnection.h"
#import "OracleConnection.h"

@interface ConnectionFactory : NSObject

+(id<DatabaseConnection>) getConnection:(NSString*)dbServer;

@end
