#import "Post.h"

@implementation Post

-(instancetype)initWith:(NSString*)text
              likeCount:(int)likeCount
               sadCount:(int)sadCount
             laughCount:(int)laughCount {
    if(self = [super init]) {
        _text = text;
        _likeCount = likeCount;
        _sadCount = sadCount;
        _laughCount = laughCount;
    }
    return self;
}

@end
