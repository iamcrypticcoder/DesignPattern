import Foundation

class GeneralUsageComputerBuilder: ComputerBuilder {
    override func buildCPU() {
        self.computer?.cpu = "Intel Core i5"
    }
    
    override func buildMotherboard() {
        self.computer?.motherboardModel = "Gigabyte GA-H110M-S2"
    }
    
    override func buildRAM() {
        self.computer?.ramValue = "8 GB"
    }
    
    override func buildStorage() {
        self.computer?.storageValue = "512 GB"
    }
    
    override func buildGraphicsCard() {
        self.computer?.graphicsCardModel = "Not installed"
    }
}
