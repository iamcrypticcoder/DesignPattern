package com.mahbub.designpattern.templatemethod;

abstract class Connection {
    protected boolean isReady;

    public Connection() {
        isReady = false;
    }

    abstract void makeReady();
    abstract boolean isReady();
    abstract void sendData(String data);
}

class BluetoothConnection extends Connection {

    public BluetoothConnection() {
        super();
    }

    void makeReady() {
        System.out.println("Bluetooth is being ready...");
        isReady = true;
    }

    boolean isReady() {
        return isReady;
    }

    void sendData(String data) {
        System.out.println("Data sent over Bluetooth");
    }
}

class WifiConnection extends Connection {

    public WifiConnection() {
        super();
    }

    void makeReady() {
        System.out.println("Wifi is being ready...");
        isReady = true;
    }

    boolean isReady() {
        return isReady;
    }

    void sendData(String data) {
        System.out.println("Data sent over Wifi");
    }
}

public class TempleteMethod_Demo {
    public static final String DEMO_DATA = "My Name is Mahbub. I like to use design pattern as much as possible because " +
            "design patterns helps to write scalable code.";

    public static void main(String args[]) {
        BluetoothConnection bluetoothConnection = new BluetoothConnection();
        WifiConnection wifiConnection = new WifiConnection();

        bluetoothConnection.makeReady();
        if(bluetoothConnection.isReady()) bluetoothConnection.sendData(DEMO_DATA);

        wifiConnection.makeReady();
        if(wifiConnection.isReady()) wifiConnection.sendData(DEMO_DATA);
    }

}
