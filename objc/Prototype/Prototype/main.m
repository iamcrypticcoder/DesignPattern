#import <Foundation/Foundation.h>
#import "Programmer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Programmer *p1 = [[Programmer alloc] initWith:@"Mahbub" designation:@"Sr. Software Engineer"];
        [p1 addPreferredLanguage:@"Java"];
        [p1 addPreferredLanguage:@"CPP"];
        [p1 addPreferredLanguage:@"Javascript"];
        [p1 addPreferredLanguage:@"C#"];
        NSLog(@"%@", [p1 toString]);
        
        Programmer *p2 = (Programmer*) [p1 clone];
        p2.name = @"Masud";
        [p2 addPreferredLanguage:@"Python"];
        NSLog(@"%@", [p2 toString]);
    }
    return 0;
}
