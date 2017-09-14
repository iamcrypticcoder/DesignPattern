//
//  Computer.h
//  Builder
//
//  Created by mahbub on 9/14/17.
//  Copyright © 2017 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Computer : NSObject

@property (nonatomic, strong) NSString* cpu;
@property (nonatomic, strong) NSString* motherboardModel;
@property (nonatomic, strong) NSString* ramValue;
@property (nonatomic, strong) NSString* storageValue;
@property (nonatomic, strong) NSString* graphicsCardModel;

-(void)printSpec;

@end
