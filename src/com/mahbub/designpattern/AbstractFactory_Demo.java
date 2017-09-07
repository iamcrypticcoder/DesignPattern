package com.mahbub.designpattern;

interface Button {
    void setTitle(String title);
    void show();
}

interface Window {
    void setTitle(String title);
    void show();
}

class WinButton implements Button {
    private String title;
    public void setTitle(String title) {
        this.title = title;
    }
    public void show() {
        System.out.println(String.format("Showing Windows style button [Title: %s]", title));
    }
}

class OSXButton implements Button {
    private String title;
    public void setTitle(String title) {
        this.title = title;
    }
    public void show() {
        System.out.println(String.format("Showing OSX style button [Title: %s]", title));
    }
}

class WinWindow implements Window {
    private String title;
    public void setTitle(String title) {
        this.title = title;
    }
    public void show() {
        System.out.println(String.format("Showing Windows style window [Title: %s]", title));
    }
}

class OSXWindow implements Window {
    private String title;
    public void setTitle(String title) {
        this.title = title;
    }
    public void show() {
        System.out.println(String.format("Showing OSX style window [Title: %s]", title));
    }
}

interface AbstractGUIFactory {
    Button createButton();
    Window createWindow();
}

class WinFactory implements AbstractGUIFactory {
    public Button createButton() {
        return new WinButton();
    }

    public Window createWindow() {
        return new OSXWindow();
    }
}

class OSXFactory implements AbstractGUIFactory {
    public Button createButton() {
        return new OSXButton();
    }

    public Window createWindow() {
        return new OSXWindow();
    }
}

class GUIBuilder {
    AbstractGUIFactory guiFactory;

    public GUIBuilder() {

    }

    private void initGUIFactory() {
        if(null != guiFactory) return;
        if(System.getProperty("os.name").contains("Win"))
            guiFactory = new WinFactory();
        else guiFactory = new OSXFactory();
    }

    public Window buildWindow() {
        initGUIFactory();
        return guiFactory.createWindow();
    }

    public Button buildButton() {
        initGUIFactory();
        return guiFactory.createButton();
    }
}

public class AbstractFactory_Demo {
    public static void main(String args[]) {
        GUIBuilder guiBuilder = new GUIBuilder();
        Window window = guiBuilder.buildWindow();
        window.setTitle("Mahbub");
        window.show();

        Button button = guiBuilder.buildButton();
        button.setTitle("Connect");
        button.show();
    }
}
