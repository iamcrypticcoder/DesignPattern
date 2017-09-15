#import <Foundation/Foundation.h>
#import "Widget.h"

@interface ListBox : Widget

@property(strong, nonatomic, readonly) NSMutableArray<NSString*>* items;
@property(atomic, readonly) int selectedIndex;

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med;
-(void)addItem:(NSString*)item;
-(void)selectItem:(int)index;
-(NSString*)getSelectedItem;
-(NSString*)toString;

@end
