#import "User.h"

@implementation User

-(instancetype)init {
    if(self = [super init]) {
        _posts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addPost:(Post*)post {
    [_posts addObject:post];
}

-(void)analyzePosts:(id<PostAnalyzeStrategy>)strategy {
    [strategy analyze:_posts];
}

@end
