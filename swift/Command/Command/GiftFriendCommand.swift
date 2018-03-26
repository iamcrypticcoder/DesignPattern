import Foundation

public class GiftFriendCommand : Command {
    
    let book: Book
    let friendName: String
    
    init(_ book: Book, _ friendName: String) {
        self.book = book
        self.friendName = friendName
    }
    
    func execute() {
        book.giftToFriend(friendName)
    }
    
}
