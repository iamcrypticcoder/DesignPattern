#import "MyDialogBoxMediator.h"

@implementation MyDialogBoxMediator

-(void)onChange:(Widget*)originator {
    if([originator isKindOfClass:[ListBox class]]) {
        ListBox* listBox = (ListBox*) originator;
        NSString* item = [listBox getSelectedItem];
        [_button setTitle:item];
        return;
    }
    
    if([originator isKindOfClass:[CheckBox class]]) {
        CheckBox* checkBox = (CheckBox*) originator;
        [_button setEnabledState:checkBox.state];
        return;
    }
}

-(void)setListBox:(ListBox*)listBox {
    _listBox = listBox;
}

-(void)setCheckBox:(CheckBox*)checkBox {
    _checkBox = checkBox;
}

-(void)setButton:(Button*)button {
    _button = button;
}

@end
