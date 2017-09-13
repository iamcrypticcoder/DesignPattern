package com.mahbub.designpattern.prototype;

import java.util.ArrayList;
import java.util.List;

interface Prototype {
    Object clone();
}

class Programmer implements Prototype {
    public String name;
    public String designation;
    public List<String> preferredLanguages;

    public Programmer() {}

    public Programmer(String name, String designation) {
        this.name = name;
        this.designation = designation;
        this.preferredLanguages = new ArrayList<>();
    }

    public void addPreferredLanguage(String lang) {
        preferredLanguages.add(lang);
    }

    public void setPreferredLanguages(List<String> preferredLanguages) {
        this.preferredLanguages = preferredLanguages;
    }

    public List<String> getPreferredLanguages() {
        return preferredLanguages;
    }

    public Object clone() {
        Programmer programmer = new Programmer(this.name, this.designation);
        programmer.setPreferredLanguages(this.preferredLanguages);
        return programmer;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Name: " + this.name);
        sb.append(" Designation: " + this.designation);
        sb.append(" Preferred Languages: " + this.preferredLanguages.toString());
        return sb.toString();
    }
}


public class Prototype_Demo {
    public static void main(String args[]) {
        Programmer p1 = new Programmer("Mahbub", "Sr. Software Engineer");
        p1.addPreferredLanguage("Java");
        p1.addPreferredLanguage("CPP");
        p1.addPreferredLanguage("Javascript");
        p1.addPreferredLanguage("C#");
        System.out.println(p1.toString());

        Programmer p2 = (Programmer) p1.clone();
        p2.name = "Masud";
        p2.addPreferredLanguage("Python");
        System.out.println(p2.toString());
    }
}

