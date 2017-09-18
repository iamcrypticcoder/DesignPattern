#import <Foundation/Foundation.h>
#import "PenTool.h"
#import "TriangleTool.h"

//#define Point

@interface MouseCursor : NSObject

-(instancetype)init;

-(void)mouseTo:(Point)p;
-(void)mouseDown:(Point)p;
-(void)mouseUp:(Point)p;
-(void)usePenTool;
-(void)useTriangleTool;

@end
