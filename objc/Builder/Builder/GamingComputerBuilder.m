#import "GamingComputerBuilder.h"

@implementation GamingComputerBuilder

-(void)buildCPU {
    [self.computer setCpu:@"Intel Core i7"];
}

-(void)buildMotherboard {
    [self.computer setMotherboardModel:@"16 GB"];
}

-(void)buildRAM {
    [self.computer setMotherboardModel:@"Gigabyte GA-Z170X"];
}

-(void)buildStorage {
    [self.computer setStorageValue:@"1 TB"];
}

-(void)buildGraphicsCard {
    [self.computer setGraphicsCardModel:@"Nvidia 1070"];
}

@end
