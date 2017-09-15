#import <Foundation/Foundation.h>
#import "Prototype.h"

@interface Programmer : NSObject<Prototype>

@property(nonatomic, strong) NSString* name;
@property(nonatomic, strong) NSString* designation;
@property(nonatomic, strong) NSMutableArray* preferredLanguages;

-(instancetype)initWith:(NSString*)name designation:(NSString*)designation;
-(void)addPreferredLanguage:(NSString*)lang;

-(NSString*)toString;


@end
