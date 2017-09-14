#import <Foundation/Foundation.h>
#import "EthernetConnection.h"
#import "MobileDataConnection.h"

@interface ThunderboltAdapter : NSObject

-(instancetype)initWithConnection:(id<Connection>)conn;
-(void)sendData:(NSString*)data;

@end
