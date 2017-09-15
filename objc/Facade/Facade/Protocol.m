#import "Protocol.h"

@implementation Protocol {
    DataCompressor* dataCompressor;
    DataSpliter* dataSpliter;
    PacketSender* packetSender;
}

-(instancetype)initWith:(CompressionAlgorithm)algo packetSize:(int)packetSize {
    if(self = [super init]) {
        dataCompressor = [[DataCompressor alloc] init];
        dataCompressor.compressionAlgo = algo;
        dataSpliter = [[DataSpliter alloc] initWithPacketSize:packetSize];
        packetSender = [[PacketSender alloc] init];
    }
    return self;
}

-(void)sendData:(NSString*)data {
    data = [dataCompressor compress:data];
    NSArray* packetList = [dataSpliter splitData:data];
    for(NSString* packet in packetList)
        [packetSender sendPacket:packet];
}

@end
