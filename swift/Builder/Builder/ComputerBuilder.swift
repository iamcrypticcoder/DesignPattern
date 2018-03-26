import Foundation

protocol ComputerBuildProtocol {
    func buildCPU() -> Void
    func buildMotherboard() -> Void
    func buildRAM() -> Void
    func buildStorage() -> Void
    func buildGraphicsCard() -> Void
}

public class ComputerBuilder : ComputerBuildProtocol {
    var computer: Computer?
    
    func getComputer() -> Computer {
        return self.computer!
    }
    
    func createComputer() -> Void {
        self.computer = Computer()
    }
    
    func buildCPU() {}
    
    func buildMotherboard() {}
    
    func buildRAM() {}
    
    func buildStorage() {}
    
    func buildGraphicsCard() {}
}
