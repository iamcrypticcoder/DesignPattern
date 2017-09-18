#import <Foundation/Foundation.h>
#import "Image.h"

@interface RealImage : NSObject<Image>

@property(strong, nonatomic) NSString* imageUrl;

-(instancetype)initWIthImageUrl:(NSString*)imageUrl;
-(BOOL)loadImageFromNetwork;
-(void)displayImage;

@end
