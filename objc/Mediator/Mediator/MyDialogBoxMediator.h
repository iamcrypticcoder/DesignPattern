#import <Foundation/Foundation.h>
#import "DialogBoxMediator.h"
#import "ListBox.h"
#import "CheckBox.h"
#import "Button.h"

@interface MyDialogBoxMediator : NSObject<DialogBoxMediator>

@property(strong, nonatomic) ListBox* listBox;
@property(strong, nonatomic) CheckBox* checkBox;
@property(strong, nonatomic) Button* button;

-(void)setListBox:(ListBox*)listBox;
-(void)setCheckBox:(CheckBox*)checkBox;
-(void)setButton:(Button*)button;

@end
