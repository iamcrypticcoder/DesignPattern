#import "Programmer.h"

@implementation Programmer

-(instancetype)initWith:(NSString*)name designation:(NSString*)designation {
    if(self = [super init]) {
        _name = name;
        _designation = designation;
        _preferredLanguages = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addPreferredLanguage:(NSString*)lang {
    [_preferredLanguages addObject:lang];
}

-(NSObject*)clone {
    Programmer* programmer = [[Programmer alloc] initWith:_name designation:_designation];
    [programmer setPreferredLanguages:[[NSMutableArray alloc] initWithArray:_preferredLanguages]];
    return programmer;
}

-(NSString*)toString {
    NSMutableString* ret = [[NSMutableString alloc] init];
    [ret appendFormat:@"Name: %@", _name];
    [ret appendFormat:@" Designation: %@", _designation];
    [ret appendFormat:@" Preferred Languages: "];
    
    [ret appendFormat:@"[ %@", [_preferredLanguages objectAtIndex:0]];
    for(int i = 1; i < _preferredLanguages.count; i++)
        [ret appendFormat:@", %@", [_preferredLanguages objectAtIndex:i]];
    [ret appendString:@" ]"];
    
    return ret;
}

@end
