import Foundation

class CommandExecutor {
    var nextCommands = [Command]()
    var executedCommands = [Command]()
    
    init() {
        
    }
    
    func addCommand(_ command:Command) -> Void {
        nextCommands.append(command)
    }
    
    func runCommand() -> Void {
        while nextCommands.count > 0 {
            let command: Command = nextCommands.removeFirst()
            command.execute()
            executedCommands.append(command)
        }
    }
}
