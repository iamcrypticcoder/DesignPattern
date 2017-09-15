#import "DataCompressor.h"

@implementation DataCompressor

-(NSString*)compress:(NSString*)data {
    switch (_compressionAlgo) {
        case CompressionAlgorithm_GZIP:
            return data;
        case CompressionAlgorithm_BZIP:
            return data;
        default:
            return nil;
    }
}

@end
