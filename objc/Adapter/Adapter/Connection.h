#import <Foundation/Foundation.h>

@protocol Connection <NSObject>

-(void)makeReady;
-(BOOL)isReady;
-(void)sendPacket:(NSString*)packet;

@end
