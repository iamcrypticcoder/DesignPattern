package com.mahbub.designpattern.singleton;

class SingletonClass {
    private static SingletonClass instance;

    // Make constructor private
    private SingletonClass() {}

    public static SingletonClass getInstance() {
        if(null == instance) {
            synchronized (SingletonClass.class) {
                // Double null check because multiple thread can reach above statement
                if(null == instance) instance = new SingletonClass();
            }
        }
        return instance;
    }

    public void testMethod() {
        System.out.println("Hi");
    }
}


public class Singleton_Demo {
    public static void main(String args[]) {
        SingletonClass obj = SingletonClass.getInstance();
        obj.testMethod();
    }
}
