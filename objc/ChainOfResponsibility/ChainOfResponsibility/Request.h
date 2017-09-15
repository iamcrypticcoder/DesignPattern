#import <Foundation/Foundation.h>

@interface Request : NSObject

@property(atomic) double weight;
@property(atomic) double money;

-(instancetype) initWith:(double)weight money:(double)money;

@end
