import Foundation

var book1: Book = Book()
var executor: CommandExecutor = CommandExecutor()
executor.addCommand(BuyCommand(book1))
executor.runCommand()
print("Current owner: \(book1.currentOwner!)")

executor.addCommand(GiftFriendCommand(book1, "Mahbub"))
executor.addCommand(SellCommand(book1))
executor.runCommand()
print("Current owner: \(book1.currentOwner!)")

