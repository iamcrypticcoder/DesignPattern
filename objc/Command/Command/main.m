#import <Foundation/Foundation.h>
#import "Book.h"
#import "BuyCommand.h"
#import "SellCommand.h"
#import "GiftFriendCommand.h"
#import "CommandExecutor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *book1 = [[Book alloc] init];
        CommandExecutor *executor = [[CommandExecutor alloc] init];
        [executor addCommand:[[BuyCommand alloc] initWithBook:book1]];
        [executor runCommand];
        NSLog(@"Current owner: %@", book1.currentOwner);
        
        [executor addCommand:[[GiftFriendCommand alloc] initWithBook:book1 friendName:@"Mahbub"]];
        [executor addCommand:[[SellCommand alloc] initWithBook:book1]];
        [executor runCommand];
        NSLog(@"Current owner: %@", book1.currentOwner);
    }
    return 0;
}
