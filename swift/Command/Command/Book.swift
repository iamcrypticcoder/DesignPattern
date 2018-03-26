import Foundation

public class Book {
    var currentOwner: String?
    
    func buy() -> Void {
        print("Buying the book...")
        currentOwner = "Me"
    }
    
    func sell() -> Void {
        print("Selling the book...")
        currentOwner = "Library"
    }
    
    func giftToFriend(_ friendName: String) -> Void {
        print("Sending the book as gift to \(friendName)")
        currentOwner = "Friend"
    }
}
