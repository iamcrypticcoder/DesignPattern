#import <Foundation/Foundation.h>
#import "Library.h"
#import "AveragePageCalcVisitor.h"
#import "AveragePriceCalcVisitor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Library* library = [[Library alloc] initWith:@"KUET Library"];
        [library addBook:[[Book alloc] initWith:@"Design Pattern" noPages:456 price:75.5]];
        [library addBook:[[Book alloc] initWith:@"Introduction to Java" noPages:666 price:110]];
        
        AveragePriceCalcVisitor* v1 = [AveragePriceCalcVisitor new];
        AveragePageCalcVisitor* v2 = [AveragePageCalcVisitor new];
        
        [library accept:v1];
        NSLog(@"Avg Price: %lf", [v1 getAvgPrice]);
        
        [library accept:v2];
        NSLog(@"Avg Page: %lf", [v2 getAvgPage]);
        
        [library addBook:[[Book alloc] initWith:@"Introduction to Java" noPages:1025 price:225]];
        
        [library accept:v1];
        NSLog(@"Avg Price: %lf", [v1 getAvgPrice]);
        
        [library accept:v2];
        NSLog(@"Avg Page: %lf", [v2 getAvgPage]);
    }
    
    return 0;
}
