import Foundation

public class Manufacturer {
    
    var computerBuilder: ComputerBuilder?
    
    func getComputer() -> Computer {
        return computerBuilder!.getComputer()
    }
    
    func constructComputer() -> Void {
        computerBuilder!.createComputer()
        computerBuilder!.buildCPU()
        computerBuilder!.buildMotherboard()
        computerBuilder!.buildRAM()
        computerBuilder!.buildStorage()
        computerBuilder!.buildGraphicsCard()
    }
}
