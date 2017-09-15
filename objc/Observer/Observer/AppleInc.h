#import <Foundation/Foundation.h>
#import "Observable.h"

@interface AppleInc : NSObject<Observable>

@property(strong, nonatomic, readonly) NSMutableArray<id<Observer>>* observers;
@property(atomic, assign, readonly) double faceValue;

-(instancetype)init;
-(instancetype)initWithFaceValue:(double)faceValue;
-(void)setFaceValue:(double)faceValue;

@end
