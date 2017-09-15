#import <Foundation/Foundation.h>
#import "ConnectionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id<DatabaseConnection> dbConnection = [ConnectionFactory getConnection:@"mysql"];
        [dbConnection connect];
        [dbConnection query:@"SELECT * FROM users"];
    }
    return 0;
}
