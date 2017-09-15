#import <Foundation/Foundation.h>

@protocol DatabaseConnection <NSObject>

-(void)connect;
-(void)query:(NSString*)queryString;

@end
