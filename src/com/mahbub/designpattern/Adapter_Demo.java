package com.mahbub.designpattern;

import java.util.Random;

interface Connection {
    void makeReady();
    boolean isReady();
    void sendPacket(String packet);
}

class EthernetConnection implements Connection {
    @Override
    public void makeReady() {
        System.out.print("Making Ethernet Ready...");
    }

    @Override
    public boolean isReady() {
        return new Random().nextBoolean();
    }

    @Override
    public void sendPacket(String packet) {
        if(packet.length() > 10) return;
        System.out.println(String.format("Packet sent. [%s]", packet));
    }
}

class MobileDataConnection implements Connection {
    @Override
    public void makeReady() {
        System.out.print("Making Ethernet Ready...");
    }

    @Override
    public boolean isReady() {
        return new Random().nextBoolean();
    }

    @Override
    public void sendPacket(String packet) {
        if(packet.length() > 5) return;
        System.out.println(String.format("Packet sent. [%s]", packet));
    }
}


class ThunderboltAdapter {
    Connection connection;

    public ThunderboltAdapter(Connection conn) {
        connection = conn;
    }

    public void sendData(String data) {
        if(connection instanceof EthernetConnection) {
            for(int i=0; i < data.length(); i += 10) {
                int endIndex = (i + 10) > data.length() ? data.length() : i + 10;
                connection.sendPacket(data.substring(i, endIndex));
            }
        } else if(connection instanceof MobileDataConnection) {
            for(int i=0; i < data.length(); i += 5) {
                int endIndex = (i + 5) > data.length() ? data.length() : i + 5;
                connection.sendPacket(data.substring(i, endIndex));
            }
        }
    }
}

public class Adapter_Demo {
    public static final String DEMO_DATA = "My Name is Mahbub. I like to use design pattern as much as possible because " +
            "design patterns helps to write scalable code.";

    public static void main(String args[]) {
        ThunderboltAdapter adapter1 = new ThunderboltAdapter(new EthernetConnection());
        adapter1.sendData(DEMO_DATA);
        adapter1 = new ThunderboltAdapter(new MobileDataConnection());
        adapter1.sendData(DEMO_DATA);
        
    }
}
