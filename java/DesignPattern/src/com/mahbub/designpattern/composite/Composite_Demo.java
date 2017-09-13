package com.mahbub.designpattern.composite;

import java.util.ArrayList;
import java.util.List;

/**
 * Compose objects into tree structures to represent part-whole hierarchies.
 * Composite lets clients treat individual objects and compositions of objects
 * uniformly.
 */

interface AnimalComp {
    void add(AnimalComp comp);
    void remove(AnimalComp comp);
    AnimalComp getChild(int index);
    void print();
}

// Leaf Object
class Head implements AnimalComp {
    @Override
    public void add(AnimalComp comp) {
        // Nothing to add into leaf object
    }

    @Override
    public void remove(AnimalComp comp) {
        // Nothing to remove from leaf object
    }

    @Override
    public AnimalComp getChild(int index) {
        return null;
    }

    @Override
    public void print() {
        System.out.println("Creating Head...");
    }
}

// Leaf Object
class Leg implements AnimalComp {
    @Override
    public void add(AnimalComp comp) {
        // Nothing to add into leaf object
    }

    @Override
    public void remove(AnimalComp comp) {
        // Nothing to remove from leaf object
    }

    @Override
    public AnimalComp getChild(int index) {
        return null;
    }
    @Override
    public void print() {
        System.out.println("Creating Leg...");
    }
}

// Leaf Object
class Body implements AnimalComp {
    @Override
    public void add(AnimalComp comp) {
        // Nothing to add into leaf object
    }

    @Override
    public void remove(AnimalComp comp) {
        // Nothing to remove from leaf object
    }

    @Override
    public AnimalComp getChild(int index) {
        return null;
    }
    @Override
    public void print() {
        System.out.println("Creating Body...");
    }
}

// Leaf Object
class Horn implements AnimalComp {
    @Override
    public void add(AnimalComp comp) {
        // Nothing to add into leaf object
    }

    @Override
    public void remove(AnimalComp comp) {
        // Nothing to remove from leaf object
    }

    @Override
    public AnimalComp getChild(int index) {
        return null;
    }
    @Override
    public void print() {
        System.out.println("Creating Horn...");
    }
}

// Leaf Object
class Tail implements AnimalComp {
    @Override
    public void add(AnimalComp comp) {
        // Nothing to add into leaf object
    }

    @Override
    public void remove(AnimalComp comp) {
        // Nothing to remove from leaf object
    }

    @Override
    public AnimalComp getChild(int index) {
        return null;
    }
    @Override
    public void print() {
        System.out.println("Creating Tail...");
    }
}

class Animal implements AnimalComp {
    private List<AnimalComp> childAnimalComp = new ArrayList<>();

    public Animal() { }

    @Override
    public void add(AnimalComp comp) {
        childAnimalComp.add(comp);
    }

    @Override
    public void remove(AnimalComp comp) {
        childAnimalComp.remove(comp);
    }

    @Override
    public AnimalComp getChild(int index) {
        return childAnimalComp.get(index);
    }

    @Override
    public void print() {
        for(AnimalComp comp : childAnimalComp) comp.print();
        System.out.println("Composition Completed");
    }
}

public class Composite_Demo {
    public static void main(String args[]) {
        AnimalComp head = new Head();
        AnimalComp leg = new Head();
        AnimalComp horn = new Horn();
        AnimalComp tail = new Tail();
        AnimalComp body = new Body();

        // Creating a horse
        Animal horse = new Animal();
        horse.add(head);
        horse.add(leg);
        horse.add(tail);
        horse.add(body);
        horse.print();

        // Creating a Cow
        Animal cow = new Animal();
        horse.add(head);
        horse.add(leg);
        horse.add(horn);
        horse.add(tail);
        horse.add(body);
        horse.print();

        // Creating a collection of animals
        Animal animals = new Animal();
        animals.add(horse);
        animals.add(cow);
        animals.print();
    }
}
