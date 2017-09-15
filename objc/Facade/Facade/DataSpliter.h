#import <Foundation/Foundation.h>

@interface DataSpliter : NSObject

-(instancetype)initWithPacketSize:(int)size;
-(NSArray*)splitData:(NSString*)data;

@end
