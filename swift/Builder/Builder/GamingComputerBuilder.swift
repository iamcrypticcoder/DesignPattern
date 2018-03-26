import Foundation

public class GamingComputerBuilder : ComputerBuilder {
    override func buildCPU() {
        self.computer?.cpu = "Intel Core i7"
    }
    
    override func buildMotherboard() {
        self.computer?.motherboardModel = "Gigabyte GA-Z170X"
    }
    
    override func buildRAM() {
        self.computer?.ramValue = "16 GB"
    }
    
    override func buildStorage() {
        self.computer?.storageValue = "1 TB"
    }
    
    override func buildGraphicsCard() {
        self.computer?.graphicsCardModel = "Nvidia 1070"
    }
}
