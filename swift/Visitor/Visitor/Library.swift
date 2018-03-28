import Foundation

class Library : Visitable {
    var name: String?
    var bookList: [Book] = [Book]()
    
    init(_ name: String) {
        self.name = name
    }
    
    func addBook(_ book: Book) -> Void {
        bookList.append(book)
    }
    
    func accept(_ visitor: LibraryVisitor) {
        for book in bookList {
            visitor.visitBook(book)
        }
        visitor.visitLibrary(self)
    }
}
