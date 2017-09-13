package com.mahbub.designpattern.mediator;

import java.util.ArrayList;
import java.util.List;

// Abstract Colleague
abstract class Widget {
    protected DialogBoxMediator med;

    public Widget(DialogBoxMediator med) {
        this.med = med;
    }
}

// Mediator interface
interface DialogBoxMediator {
    void onChange(Widget originator);
}

// Concrete Colleague
class ListBox extends Widget {
    private List<String> items = new ArrayList<>();
    private int selectedIndex;

    public ListBox(DialogBoxMediator med) {
        super(med);
        items = new ArrayList<>();
        selectedIndex = -1;
    }

    public void addItem(String item) {
        items.add(item);
    }

    public void selectItem(int index) {
        if(index != selectedIndex) {
            selectedIndex = index;
            med.onChange(this);
        }
    }

    public String getSelectedItem() {
        if(selectedIndex == -1) return null;
        return items.get(selectedIndex);
    }

    public String toString() {
        return String.format("Selected Item: " + items.get(selectedIndex));
    }
}

// Concrete Colleague
class Button extends Widget {
    private String title;
    private boolean enabledState;

    public Button(DialogBoxMediator med) {
        super(med);
        title = "";
        enabledState = true;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        if(!this.title.equals(title)) {
            this.title = title;
            med.onChange(this);
        }
    }

    public void setEnabledState(boolean enabledState) {
        this.enabledState = enabledState;
    }

    public String toString() {
        return String.format("Title: %s, State: %s", title, enabledState ? "Enabled" : "Disabled");
    }
}

// Concrete Colleague
class CheckBox extends Widget {
    private boolean state;

    public CheckBox(DialogBoxMediator med) {
        super(med);
        state = true;
    }

    public void setCheckedStatus(boolean status) {
        if(this.state != status) {
            this.state = status;
            med.onChange(this);
        }
    }

    public boolean getCheckedStatus() {
        return this.state;
    }

    public String toString() {
        return String.format("State: %s", state ? "Enabled" : "Disabled");
    }
}

// Concrete Mediator
class MyDialogBoxMediator implements DialogBoxMediator {
    //List<Widget> widgets = new ArrayList<>();
    private ListBox listBox;
    private CheckBox checkBox;
    private Button button;

    @Override
    public void onChange(Widget originator) {
        if(originator instanceof ListBox) {
            ListBox listBox = (ListBox) originator;
            String item = listBox.getSelectedItem();
            button.setTitle(item);
            return;
        }

        if(originator instanceof CheckBox) {
            CheckBox checkBox = (CheckBox) originator;
            button.setEnabledState(checkBox.getCheckedStatus());
            return;
        }
    }

    public void setListBox(ListBox listBox) {
        this.listBox = listBox;
    }

    public void setCheckBox(CheckBox checkBox) {
        this.checkBox = checkBox;
    }

    public void setButton(Button button) {
        this.button = button;
    }
}

public class Mediator_Demo {
    public static void main(String args[]) {
        MyDialogBoxMediator mediator = new MyDialogBoxMediator();
        ListBox listBox = new ListBox(mediator);
        listBox.addItem("Times New Roman");
        listBox.addItem("Calibri");
        listBox.addItem("Menlo");
        listBox.addItem("Courier New");
        Button button = new Button(mediator);
        CheckBox checkBox = new CheckBox(mediator);
        mediator.setListBox(listBox);
        mediator.setButton(button);
        mediator.setCheckBox(checkBox);

        listBox.selectItem(0);
        System.out.println(listBox.toString());
        System.out.println(button.toString());
        System.out.println(checkBox.toString());

        listBox.selectItem(1);
        checkBox.setCheckedStatus(false);
        System.out.println(listBox.toString());
        System.out.println(button.toString());
        System.out.println(checkBox.toString());

    }

}
