package com.mahbub.designpattern.facade;

import java.util.ArrayList;
import java.util.List;

/**
 * Provide a unified interface to a set of interfaces in a subsystem.
 * Facade defines a higher-level interface that makes the subsystem easier to use.
 */

// Subsystem
class PacketSender {
    public void sendPacket(String packet) {
        System.out.println(String.format("Packet sent: [%s]", packet));
    }
}

class DataSpliter {
    private int packetSize;

    public DataSpliter(int packetSize) {
        this.packetSize = packetSize;
    }

    public List<String> splitData(String data) {
        int dataLength = data.length();
        List<String> retList = new ArrayList<>();
        for(int i = 0; i < dataLength; i += packetSize) {
            int endIndex = i + packetSize > dataLength ? dataLength : i + packetSize;
            retList.add(data.substring(i, endIndex));
        }
        return retList;
    }
}

// Subsystem
class DataCompressor {
    private Protocol.CompressionAlgorithm compressionAlgorithm;

    public DataCompressor() {
    }

    public DataCompressor(Protocol.CompressionAlgorithm compressionAlgorithm) {
        this.compressionAlgorithm = compressionAlgorithm;
    }

    public void setCompressionAlgorithm(Protocol.CompressionAlgorithm compressionAlgorithm) {
        this.compressionAlgorithm = compressionAlgorithm;
    }

    public String compress(String data) {
        switch (compressionAlgorithm) {
            case GZIP:
                return data;
            case BZIP:
                return data;
            default:
                return null;
        }
    }
}

// Facade
class Protocol {
    enum CompressionAlgorithm { GZIP, BZIP };

    DataCompressor dataCompressor;
    DataSpliter dataSpliter;
    PacketSender packetSender;

    public Protocol(CompressionAlgorithm compressionAlgorithm, int packetSize) {
        dataCompressor = new DataCompressor(compressionAlgorithm);
        dataSpliter = new DataSpliter(packetSize);
        packetSender = new PacketSender();
    }

    public void sendData(String data) {
        data = dataCompressor.compress(data);
        List<String> packetList = dataSpliter.splitData(data);
        for(String s : packetList) packetSender.sendPacket(s);
    }
}

public class Facade_Demo {
    public static void main(String args[]) {
        Protocol protocol = new Protocol(Protocol.CompressionAlgorithm.GZIP, 5);
        protocol.sendData("I am a good boy");
    }
}
