#import <Foundation/Foundation.h>
#import "Image.h"
#import "RealImage.h"

@interface ProxyImage : NSObject<Image>

@property(strong, nonatomic) NSString* imageUrl;

-(instancetype)initWIthImageUrl:(NSString*)imageUrl;
-(void)displayImage;

@end
