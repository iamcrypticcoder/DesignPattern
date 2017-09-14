// Implementer interface
@protocol GraphicsAPI <NSObject>

-(void)drawRectangle:(int)x y:(int)y width:(int)w height:(int)h;
-(void)drawCircle:(int)x y:(int)y radius:(int)r;

@end
