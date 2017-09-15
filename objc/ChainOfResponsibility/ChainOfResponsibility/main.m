#import <Foundation/Foundation.h>
#import "CourierService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CourierService* courierService = [[CourierService alloc] init];
        [courierService processOrder:[[Request alloc] initWith:101 money:10]];
    }
    return 0;
}
