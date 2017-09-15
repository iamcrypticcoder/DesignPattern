#import "ListBox.h"

@implementation ListBox

-(instancetype)initWithMediator:(id<DialogBoxMediator>)med {
    if(self = [super initWithMediator:med]) {
        _items = [[NSMutableArray alloc] init];
        _selectedIndex = -1;
    }
    return self;
}

-(void)addItem:(NSString*)item {
    [_items addObject:item];
}

-(void)selectItem:(int)index {
    if(index != _selectedIndex) {
        _selectedIndex = index;
        [self.med onChange:self];
    }
}

-(NSString*)getSelectedItem {
    return _items[_selectedIndex];
}

-(NSString*)toString {
    return [[NSString alloc] initWithFormat:@"Selected Item: %@", [_items objectAtIndex:_selectedIndex]];
}

@end
