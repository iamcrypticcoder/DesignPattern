#import <Foundation/Foundation.h>

@interface Connection : NSObject 

@property(assign, atomic) BOOL isReady;

-(instancetype)init;

-(void) makeReady;
-(BOOL) isConnectionReady;
-(void) sendData:(NSString*)data;

@end
