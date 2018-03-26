import Foundation

public class Computer {
    var cpu: String?
    var motherboardModel: String?
    var ramValue: String?
    var storageValue: String?
    var graphicsCardModel: String?
    
    func printSpec() -> Void {
        print("------------------------------------------------");
        print("CPU: \(cpu!)");
        print("Motherboard Model: \(motherboardModel!)");
        print("Ram Value: \(ramValue!)");
        print("Storage Value: \(storageValue!)");
        print("Graphics Card Model: \(graphicsCardModel!)");
        print("------------------------------------------------");
    }
}
