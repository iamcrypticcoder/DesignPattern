#import "GiftFriendCommand.h"

@implementation GiftFriendCommand

-(instancetype)initWithBook:(Book*)book friendName:(NSString*)friendName {
    if(self = [super init]) {
        _book = book;
        _friendName = friendName;
    }
    return self;
}

-(void)execute {
    [_book giftToFriend:_friendName];
}

@end
