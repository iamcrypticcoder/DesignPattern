import Foundation

public class BuyCommand : Command {
    
    let book: Book
    
    init(_ book: Book) {
        self.book = book
    }
    
    func execute() {
        book.buy()
    }

}
