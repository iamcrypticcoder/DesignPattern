#import "RealImage.h"

@implementation RealImage

-(instancetype)initWIthImageUrl:(NSString*)imageUrl {
    if(self = [super init]) {
        _imageUrl = imageUrl;
    }
    return self;
}

-(BOOL)loadImageFromNetwork {
    BOOL ret = arc4random_uniform(100) % 2;
    NSLog(@"Loading image from network... %@", ret ? @"SUCCESS" : @"FAIL");
    return ret;
}

-(void)displayImage {
    NSLog(@"Displaying %@", _imageUrl);
}

@end
