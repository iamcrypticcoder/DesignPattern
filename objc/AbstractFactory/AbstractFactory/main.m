//
//  main.m
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 9/13/17.
//  Copyright © 2017 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mahbub : NSObject

+(void) print;

@end

@implementation Mahbub

+(void)print {
    NSLog(@"Hello");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"AbstractFactory");
        [Mahbub print];
    }
    return 0;
}
