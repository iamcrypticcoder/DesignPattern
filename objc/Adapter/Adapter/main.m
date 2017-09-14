#import <Foundation/Foundation.h>
#import "ThunderboltAdapter.h"

#define DEMO_DATA @"My Name is Mahbub. I like to use design pattern as much as possible because design patterns helps to write scalable code."

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id<Connection> ethernetConn = [[EthernetConnection alloc] init];
        id<Connection> mobileDataConn = [[MobileDataConnection alloc] init];
        
        ThunderboltAdapter *adapter = [[ThunderboltAdapter alloc] initWithConnection:ethernetConn];
        [adapter sendData:DEMO_DATA];
        
        adapter = [[ThunderboltAdapter alloc] initWithConnection:mobileDataConn];
        [adapter sendData:DEMO_DATA];

    }
    return 0;
}
