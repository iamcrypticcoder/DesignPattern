#import "LaughAnalyzeStrategy.h"

@implementation LaughAnalyzeStrategy

-(void)analyze:(NSArray<Post*>*)posts {
    int postCount = [posts count];
    int totalLaughCount = 0;
    for(Post* post in posts)
        totalLaughCount += post.laughCount;
    NSLog(@"Laugh Value: %lf", (double)totalLaughCount / postCount);
}

@end
