#import <Foundation/Foundation.h>
#import "Manufacturer.h"
#import "GeneralUsageComputerBuilder.h"
#import "GamingComputerBuilder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Manufacturer* manufacturer = [[Manufacturer alloc] init];
        [manufacturer setComputerBuilder:[[GeneralUsageComputerBuilder alloc] init] ];
        [manufacturer constructComputer];
        Computer* computer = [manufacturer getComputer];
        [computer printSpec];
        
        [manufacturer setComputerBuilder:[[GamingComputerBuilder alloc] init]];
        [manufacturer constructComputer];
        computer = [manufacturer getComputer];
        [computer printSpec];
    }
    return 0;
}
