#import <Foundation/Foundation.h>
#import "MyDialogBoxMediator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyDialogBoxMediator* mediator = [[MyDialogBoxMediator alloc] init];
        ListBox* listBox = [[ListBox alloc] initWithMediator:mediator];
        [listBox addItem:@"Times New Roman"];
        [listBox addItem:@"Calibri"];
        [listBox addItem:@"Menlo"];
        [listBox addItem:@"Courier New"];
        
        Button* button = [[Button alloc] initWithMediator:mediator];
        CheckBox* checkBox = [[CheckBox alloc] initWithMediator:mediator];
        [mediator setListBox:listBox];
        [mediator setCheckBox:checkBox];
        [mediator setButton:button];
        
        
        [listBox selectItem:0];
        NSLog(@"%@", [listBox toString]);
        NSLog(@"%@", [button toString]);
        NSLog(@"%@", [listBox toString]);
        
        [listBox selectItem:1];
        [checkBox setCheckedStatus:NO];
        NSLog(@"%@", [listBox toString]);
        NSLog(@"%@", [button toString]);
        NSLog(@"%@", [listBox toString]);
    }
    return 0;
}
