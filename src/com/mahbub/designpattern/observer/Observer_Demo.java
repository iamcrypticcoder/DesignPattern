package com.mahbub.designpattern.observer;

import java.util.ArrayList;

interface Observer {
    void update(double interest);
}

interface Observable {
    void registerObserver(Observer observer);
    void removeObserver(Observer observer);

    void notifyObservers();
}

// Represents face value of a stock of apple Inc.
class AppleInc implements Observable {
    private ArrayList<Observer> observers = new ArrayList<Observer>();
    private double faceValue;

    public AppleInc(double faceValue) {
        this.faceValue = faceValue;
    }

    public double getFaceValue() {
        return this.faceValue;
    }

    public void setFaceValue(double faceValue) {
        this.faceValue = faceValue;
        notifyObservers();
    }

    @Override
    public void registerObserver(Observer observer) {
        observers.add(observer);

    }

    @Override
    public void removeObserver(Observer observer) {
        observers.remove(observer);

    }

    @Override
    public void notifyObservers() {
        for (Observer ob : observers) {
            System.out.println("Notifying Observers on change in face value");
            ob.update(this.faceValue);
        }

    }

}

class Newspaper implements Observer {
    @Override
    public void update(double faceValue) {
        System.out.println("Newspaper: Face Value of AppleInc updated, new Value is: " + faceValue);
    }
}

class Internet implements Observer {
    @Override
    public void update(double faceValue) {
        System.out.println("Internet: Face Value of AppleInc updated, new Value is: " + faceValue);
    }
}

public class Observer_Demo {
    public static void main(String args[]) {
        Newspaper printMedia = new Newspaper();
        Internet onlineMedia = new Internet();

        AppleInc appl = new AppleInc(665.45);
        appl.registerObserver(printMedia);
        appl.registerObserver(onlineMedia);
        appl.setFaceValue(660.00);
    }
}
