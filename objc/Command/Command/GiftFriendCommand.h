#import <Foundation/Foundation.h>
#import "Command.h"
#import "Book.h"

@interface GiftFriendCommand : NSObject<Command>

@property(strong, nonatomic, readonly) Book* book;
@property(strong, nonatomic, readonly) NSString* friendName;

-(instancetype)initWithBook:(Book*)book friendName:(NSString*)friendName;

@end
