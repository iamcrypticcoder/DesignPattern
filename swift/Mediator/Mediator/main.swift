import Foundation

let mediator: MyDialogBoxMediator = MyDialogBoxMediator()
var listBox: ListBox = ListBox(mediator)
listBox.addItem("Times New Roman")
listBox.addItem("Calibri")
listBox.addItem("Menlo")
listBox.addItem("Courier New")

var button: Button = Button(mediator)
var checkBox: CheckBox = CheckBox(mediator)

mediator.listBox = listBox
mediator.checkBox = checkBox
mediator.button = button

listBox.selectItem(0)
print(listBox.toString())
print(button.toString())
print(checkBox.toString())

listBox.selectItem(1)
checkBox.setCheckedStatus(false)
print(listBox.toString())
print(button.toString())
print(checkBox.toString())
