#import <Foundation/Foundation.h>

@protocol AbstractTool <NSObject>

-(void)mouseTo:(Point)p;
-(void)mouseDown:(Point)p;
-(void)mouseUp:(Point)p;

@end
