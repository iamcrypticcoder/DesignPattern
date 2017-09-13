package com.mahbub.designpattern.builder;

class Computer {
    private String cpu;
    private String motherboardModel;
    private String ramValue;
    private String storageValue;
    private String graphicsCardModel;

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public void setMotherboardModel(String motherboardModel) {
        this.motherboardModel = motherboardModel;
    }

    public void setRamValue(String ramValue) {
        this.ramValue = ramValue;
    }

    public void setStorageValue(String storageValue) {
        this.storageValue = storageValue;
    }

    public void setGraphicsCardModel(String graphicsCardModel) {
        this.graphicsCardModel = graphicsCardModel;
    }

    public void printSpec() {
        System.out.println("-------------------------------------------");
        System.out.println("CPU: " + cpu);
        System.out.println("Motherboard Model: " + motherboardModel);
        System.out.println("Ram Value: " + ramValue);
        System.out.println("Storage Value: " + storageValue);
        System.out.println("Graphics Card Model: " + graphicsCardModel);
        System.out.println("-------------------------------------------");
    }
}

abstract class ComputerBuilder {
    protected Computer computer;

    public Computer getComputer() {
        return computer;
    }

    public void createComputer() {
        computer = new Computer();
    }

    public abstract void buildCPU();
    public abstract void buildMotherboard();
    public abstract void buildRAM();
    public abstract void buildStorage();
    public abstract void buildGraphicsCard();
}

class GamingComputerBuilder extends ComputerBuilder {
    @Override
    public void buildCPU() {
        computer.setCpu("Intel Core i7");
    }

    @Override
    public void buildMotherboard() {
        computer.setRamValue("16 GB");
    }

    @Override
    public void buildRAM() {
        computer.setMotherboardModel("Gigabyte GA-Z170X");
    }

    @Override
    public void buildStorage() {
        computer.setStorageValue("1 TB");
    }

    @Override
    public void buildGraphicsCard() {
        computer.setGraphicsCardModel("Nvidia 1070");
    }
}

class GeneralUsageComputerBuilder extends ComputerBuilder {
    @Override
    public void buildCPU() {
        computer.setCpu("Intel Core i5");
    }

    @Override
    public void buildMotherboard() {
        computer.setMotherboardModel("Gigabyte GA-H110M-S2");
    }

    @Override
    public void buildRAM() {
        computer.setRamValue("8 GB");
    }

    @Override
    public void buildStorage() {
        computer.setStorageValue("512 GB");
    }

    @Override
    public void buildGraphicsCard() {
        computer.setGraphicsCardModel("Not installed");
    }
}

class Manufacturer {
    private ComputerBuilder computerBuilder;

    public void setComputerBuilder(ComputerBuilder computerBuilder) {
        this.computerBuilder = computerBuilder;
    }

    public Computer getComputer() {
        return computerBuilder.getComputer();
    }

    public void constructComputer() {
        computerBuilder.createComputer();
        computerBuilder.buildCPU();
        computerBuilder.buildMotherboard();
        computerBuilder.buildRAM();
        computerBuilder.buildStorage();
        computerBuilder.buildGraphicsCard();
    }
}

public class Builder_Demo {
    public static void main(String args[]) {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setComputerBuilder(new GeneralUsageComputerBuilder());
        manufacturer.constructComputer();
        Computer computer = manufacturer.getComputer();
        computer.printSpec();

        manufacturer.setComputerBuilder(new GamingComputerBuilder());
        manufacturer.constructComputer();
        computer = manufacturer.getComputer();
        computer.printSpec();
    }
}
