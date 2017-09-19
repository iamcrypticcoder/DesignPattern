#import <Foundation/Foundation.h>
#import "Post.h"
#import "PostAnalyzeStrategy.h"

@interface User : NSObject

@property(strong, nonatomic, readonly) NSMutableArray<Post*>* posts;

-(instancetype)init;
-(void)addPost:(Post*)post;
-(void)analyzePosts:(id<PostAnalyzeStrategy>)strategy;

@end
