#import <Foundation/Foundation.h>
#import "User.h"
#import "Post.h"
#import "SadnessAnalyzeStrategy.h"
#import "LaughAnalyzeStrategy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        User* user = [[User alloc] init];
        [user addPost:[[Post alloc] initWith:@"Post 1"
                                   likeCount:10
                                    sadCount:5
                                  laughCount:5]];
        [user addPost:[[Post alloc] initWith:@"Post 2"
                                   likeCount:10
                                    sadCount:5
                                  laughCount:5]];
        [user addPost:[[Post alloc] initWith:@"Post 3"
                                   likeCount:15
                                    sadCount:0
                                  laughCount:0]];
        [user addPost:[[Post alloc] initWith:@"Post 4"
                                   likeCount:0
                                    sadCount:0
                                  laughCount:10]];
         
        [user analyzePosts:[[SadnessAnalyzeStrategy alloc] init]];
        [user analyzePosts:[[LaughAnalyzeStrategy alloc] init]];
    }
    
    return 0;
}
