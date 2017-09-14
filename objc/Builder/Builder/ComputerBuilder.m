//
//  ComputerBuilder.m
//  Builder
//
//  Created by mahbub on 9/14/17.
//  Copyright © 2017 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

#import "ComputerBuilder.h"

@implementation ComputerBuilder

-(Computer*)getComputer {
    return _computer;
}

-(void)createComputer {
    _computer = [[Computer alloc] init];
}

@end
