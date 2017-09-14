#import "GeneralUsageComputerBuilder.h"

@implementation GeneralUsageComputerBuilder

-(void)buildCPU {
    [self.computer setCpu:@"Intel Core i5"];
}

-(void)buildMotherboard {
    [self.computer setMotherboardModel:@"8 GB"];
}

-(void)buildRAM {
    [self.computer setMotherboardModel:@"Gigabyte GA-H110M-S2"];
}

-(void)buildStorage {
    [self.computer setStorageValue:@"512 TB"];
}

-(void)buildGraphicsCard {
    [self.computer setGraphicsCardModel:@"Not installed"];
}


@end
