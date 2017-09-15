#import "Book.h"

@implementation Book

-(void)buy {
    NSLog(@"Buying the book...");
    _currentOwner = @"Me";
}

-(void)sell {
    NSLog(@"Selling the book...");
    _currentOwner = @"Library";
}

-(void)giftToFriend:(NSString*)friendName {
    NSLog(@"Sending the book as gift to %@", friendName);
    _currentOwner = @"Friend";
}

@end
