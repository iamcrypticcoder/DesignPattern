#import "ProxyImage.h"

@implementation ProxyImage {
    RealImage* realImage;
}

-(instancetype)initWIthImageUrl:(NSString*)imageUrl {
    if(self = [super init]) {
        _imageUrl = imageUrl;
    }
    return self;
}

-(BOOL)loadImageFromMemory {
    BOOL ret = arc4random_uniform(100) % 2;
    NSLog(@"Loading image from memory... %@", ret ? @"SUCCESS" : @"FAIL");
    return ret;
}

-(BOOL)loadImageFromDisk {
    BOOL ret = arc4random_uniform(100) % 2;
    NSLog(@"Loading image from disk... %@", ret ? @"SUCCESS" : @"FAIL");
    return ret;
}

-(void)displayPlaceholderImage {
    NSLog(@"Displaying placeholding image...");
}

-(void)displayImage {
    if ([self loadImageFromMemory]) {
        NSLog(@"Displaying %@", _imageUrl);
        return;
    }
    
    if([self loadImageFromDisk]) {
        NSLog(@"Displaying %@", _imageUrl);
        return;
    }
    
    if(nil == realImage) {
        realImage = [[RealImage alloc] initWIthImageUrl:_imageUrl];
    }
    
    if([realImage loadImageFromNetwork]) {
        [realImage displayImage];
        return;
    }
    
    [self displayPlaceholderImage];
}

@end
