#import <Foundation/Foundation.h>

@protocol LibraryVisitor;

@protocol Visitable <NSObject>

-(void)accept:(id<LibraryVisitor>)visitor;

@end
