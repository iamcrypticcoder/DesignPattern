#import <Foundation/Foundation.h>
#import "Observer.h"

@protocol Observable <NSObject>

-(void)registerObserver:(id<Observer>)observer;
-(void)removeObserver:(id<Observer>)observer;
-(void)notifyObserver;

@end
