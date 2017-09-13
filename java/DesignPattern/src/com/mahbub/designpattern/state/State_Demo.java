package com.mahbub.designpattern.state;

import java.awt.*;

interface AbstractTool {
    void mouseTo(Point p);
    void mouseDown(Point p);
    void mouseUp(Point p);
}

class PenTool implements AbstractTool {

    private Point sPoint, ePoint;
    boolean mouseDown = false;

    @Override
    public void mouseTo(Point p) {
        if(this.mouseDown == true)
            System.out.println("Print a LINE from start point to current point");
    }

    @Override
    public void mouseDown(Point p) {
        this.sPoint = p;
        this.mouseDown = true;
    }

    @Override
    public void mouseUp(Point p) {
        this.ePoint = p;
        this.mouseDown = false;
    }
}

class TriangleTool implements AbstractTool {

    private Point sPoint, ePoint;
    boolean mouseDown = false;

    @Override
    public void mouseTo(Point p) {
        if(this.mouseDown == true)
            System.out.println("Print a TRIANGLE from start point to current point");
    }

    @Override
    public void mouseDown(Point p) {
        this.sPoint = p;
        this.mouseDown = true;
    }

    @Override
    public void mouseUp(Point p) {
        this.ePoint = p;
        this.mouseDown = false;
    }
}

class MouseCursor {
    AbstractTool tool = new PenTool();

    public void mouseTo(Point p) {
        tool.mouseTo(p);
    }
    public void mouseDown(Point p) {
        tool.mouseDown(p);
    }
    public void mouseUp(Point p) {
        tool.mouseUp(p);
    }

    public void usePenTool() {
        tool = new PenTool();
    }

    public void useTriangleTool() {
        tool = new TriangleTool();
    }
}

public class State_Demo {
    public static void main(String args[]) {
        MouseCursor pointer = new MouseCursor();

        pointer.mouseDown(new Point(0,0));
        pointer.mouseTo(new Point(5,5));
        pointer.mouseUp(new Point(5,5));

        pointer.useTriangleTool();

        pointer.mouseDown(new Point(0,0));
        pointer.mouseTo(new Point(5,5));
        pointer.mouseUp(new Point(5,5));
    }
}
