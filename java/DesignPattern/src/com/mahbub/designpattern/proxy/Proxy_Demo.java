package com.mahbub.designpattern.proxy;

import java.util.Random;

interface Image {
    void displayImage();
}

class RealImage implements Image {

    private String imageUrl = null;

    public RealImage(final String imageUrl) {
        this.imageUrl = imageUrl;
    }

    // Load image from network
    public boolean loadImageFromNetwork() {
        boolean ret = new Random().nextBoolean();
        System.out.println("Loading image from network... " + (ret ? "SUCCESS" : "FAIL"));
        return ret;
    }

    // Displays the image
    public void displayImage() {
        System.out.println("Displaying " + imageUrl);
    }

}

class ProxyImage implements Image {

    private RealImage image = null;
    private String imageUrl = null;

    public ProxyImage(final String imageUrl) {
        this.imageUrl = imageUrl;
    }

    // Load from memory
    private boolean loadImageFromMemory() {
        boolean ret = new Random().nextBoolean();
        System.out.println("Loading image from memory... " + (ret ? "SUCCESS" : "FAIL"));
        return ret;
    }

    // Load image from disk
    private boolean loadImageFromDisk() {
        boolean ret = new Random().nextBoolean();
        System.out.println("Loading image from disk..." + (ret ? "SUCCESS" : "FAIL"));
        return ret;
    }

    // Display placeholder image
    private void displayPlaceholderImage() {
        System.out.println("Displaying placeholding image...");
    }

    /**
     * Displays the image
     */
    public void displayImage() {
        if(loadImageFromMemory()) {
            System.out.println("Displaying " + imageUrl);
            return;
        }
        if(loadImageFromDisk()) {
            System.out.println("Displaying " + imageUrl);
            return;
        }

        if (image == null) {
            image = new RealImage(imageUrl);
        }

        if(image.loadImageFromNetwork()) {
            image.displayImage();
            return;
        }

        displayPlaceholderImage();
    }
}

public class Proxy_Demo {
    public static void main(String args[]) {
        final Image IMAGE1 = new ProxyImage("HiRes_10MB_Photo1");
        final Image IMAGE2 = new ProxyImage("HiRes_10MB_Photo2");

        IMAGE1.displayImage(); // loading necessary
        IMAGE1.displayImage(); // loading unnecessary
        //IMAGE2.displayImage(); // loading necessary
        //IMAGE2.displayImage(); // loading unnecessary
        //IMAGE1.displayImage(); // loading unnecessary
    }
}
