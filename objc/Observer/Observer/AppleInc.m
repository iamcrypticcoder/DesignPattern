#import "AppleInc.h"

@implementation AppleInc

-(instancetype)init {
    if(self = [super init]) {
        _observers = [[NSMutableArray alloc] init];
    }
    return self;
}

-(instancetype)initWithFaceValue:(double)faceValue {
    if(self = [super init]) {
        _observers = [[NSMutableArray alloc] init];
        _faceValue = faceValue;
    }
    return self;
}

-(void)setFaceValue:(double)faceValue {
    _faceValue = faceValue;
    [self notifyObservers];
}

-(void)registerObserver:(id<Observer>)observer {
    [_observers addObject:observer];
}

-(void)removeObserver:(id<Observer>)observer {
    [_observers removeObject:observer];
}

-(void)notifyObservers {
    for(id<Observer> ob in _observers) {
        NSLog(@"Notifying Observers on change in face value");
        [ob update:_faceValue];
    }
}

@end
