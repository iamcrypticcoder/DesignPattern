#import "SadnessAnalyzeStrategy.h"

@implementation SadnessAnalyzeStrategy

-(void)analyze:(NSArray<Post*>*)posts {
    int postCount = [posts count];
    int totalSadCount = 0;
    for(Post* post in posts)
        totalSadCount += post.sadCount;
    NSLog(@"Sadness Value: %lf", (double)totalSadCount / postCount);
}

@end
