import Foundation

let manufacturer: Manufacturer = Manufacturer()
manufacturer.computerBuilder = GeneralUsageComputerBuilder()
manufacturer.constructComputer()
var computer: Computer = manufacturer.getComputer()
computer.printSpec()

manufacturer.computerBuilder = GamingComputerBuilder()
manufacturer.constructComputer()
computer = manufacturer.getComputer()
computer.printSpec()

