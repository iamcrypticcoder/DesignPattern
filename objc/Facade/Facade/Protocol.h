#import <Foundation/Foundation.h>
#import "DataCompressor.h"
#import "DataSpliter.h"
#import "PacketSender.h"

typedef enum {
    CompressionAlgorithm_GZIP = 0,
    CompressionAlgorithm_BZIP
} CompressionAlgorithm;

@interface Protocol : NSObject

@property(atomic) CompressionAlgorithm algo;

-(instancetype)initWith:(CompressionAlgorithm)algo packetSize:(int)packetSize;
-(void)sendData:(NSString*)data;

@end
