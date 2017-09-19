#import <Foundation/Foundation.h>

@interface Post : NSObject

@property(strong, nonatomic) NSString* text;
@property(assign, atomic) int likeCount;
@property(assign, atomic) int sadCount;
@property(assign, atomic) int laughCount;

-(instancetype)initWith:(NSString*)text
              likeCount:(int)likeCount
               sadCount:(int)sadCount
             laughCount:(int)laughCount;

@end
