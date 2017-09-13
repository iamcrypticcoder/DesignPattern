package com.mahbub.designpattern.bridge;

// Implementer interface
interface GraphicsAPI {
    void drawRectangle(int x, int y, int w, int h);
    void drawCircle(int x, int y, int r);
}

// Concrete Implementor
class OpenGLAPI implements GraphicsAPI {
    @Override
    public void drawRectangle(int x, int y, int w, int h) {
        System.out.println("Rectangle drawn by OpenGL API");
    }

    @Override
    public void drawCircle(int x, int y, int r) {
        System.out.println("Circle drawn by OpenGL API");
    }
}

// Concrete Implementor
class DirectXAPI implements GraphicsAPI {
    @Override
    public void drawRectangle(int x, int y, int w, int h) {
        System.out.println("Rectangle drawn by DirectXAPI API");
    }

    @Override
    public void drawCircle(int x, int y, int r) {
        System.out.println("Circle drawn by DirectXAPI API");
    }
}

// Abstraction base class
abstract class Shape {
    protected GraphicsAPI graphicsAPI;

    protected Shape(GraphicsAPI graphicsAPI) {
        this.graphicsAPI = graphicsAPI;
    }

    public abstract void draw();
}

// Concrete abstraction class by extending base abstract class
class Circle extends Shape {
    private int x, y, r;

    public Circle(int x, int y, int r, GraphicsAPI graphicsAPI) {
        super(graphicsAPI);
        this.x = x;
        this.y = y;
        this.r = r;
    }

    @Override
    public void draw() {
        graphicsAPI.drawCircle(x, y, r);
    }
}

// Concrete abstraction class by extending base abstract class
class Rectangle extends Shape {
    private int x, y, w, h;

    public Rectangle(int x, int y, int w, int h, GraphicsAPI graphicsAPI) {
        super(graphicsAPI);
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
    }

    @Override
    public void draw() {
        graphicsAPI.drawRectangle(x, y, w, h);
    }
}


public class Bridge_Demo {
    public static void main(String args[]) {
        // Bridge pattern is good for run time binding of implementation
        Shape circle = new Circle(10, 10, 10, new OpenGLAPI());
        circle.draw();
        circle = new Circle(10, 10, 10, new DirectXAPI());
        circle.draw();

        Shape rect = new Rectangle(10, 10, 10, 10, new OpenGLAPI());
        rect.draw();
        rect = new Rectangle(10, 10, 10, 10, new DirectXAPI());
        rect.draw();
    }
}
