#import <Foundation/Foundation.h>
#import "Post.h"

@protocol PostAnalyzeStrategy <NSObject>

-(void)analyze:(NSArray<Post*>*)posts;

@end
