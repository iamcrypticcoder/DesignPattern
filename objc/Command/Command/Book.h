#import <Foundation/Foundation.h>

@interface Book : NSObject

@property(nonatomic, strong, readonly) NSString* currentOwner;

-(void)buy;
-(void)sell;
-(void)giftToFriend:(NSString*)friendName;


@end
