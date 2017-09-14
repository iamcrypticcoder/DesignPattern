#import <Foundation/Foundation.h>
#import "Computer.h"

@protocol ComputerBuildDelegate <NSObject>

@optional
-(void)buildCPU;
-(void)buildMotherboard;
-(void)buildRAM;
-(void)buildStorage;
-(void)buildGraphicsCard;

@end

@interface ComputerBuilder : NSObject<ComputerBuildDelegate>

@property(nonatomic, strong) Computer* computer;

-(Computer*)getComputer;
-(void)createComputer;

@end
