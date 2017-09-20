#import <Foundation/Foundation.h>
#import "BluetoothConnection.h"
#import "WifiConnection.h"

#define DEMO_DATA @"My Name is Mahbub. I like to use design pattern as much as possible because design patterns helps to write scalable code."

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BluetoothConnection* bluetoothConnection = [[BluetoothConnection alloc] init];
        WifiConnection* wifiConnection = [[WifiConnection alloc] init];
        
        [bluetoothConnection makeReady];
        if([bluetoothConnection isConnectionReady])
            [bluetoothConnection sendData:DEMO_DATA];
        
        [wifiConnection makeReady];
        if([wifiConnection isConnectionReady])
            [wifiConnection sendData:DEMO_DATA];
    }
    return 0;
}
