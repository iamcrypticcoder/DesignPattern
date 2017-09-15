#import <Foundation/Foundation.h>
#import "Protocol.h"

@interface DataCompressor : NSObject

@property(atomic) uint compressionAlgo;

-(NSString*)compress:(NSString*)data;

@end
