import Foundation

protocol LibraryVisitor {
    func visitBook(_ book: Book) -> Void
    func visitLibrary(_ library: Library) -> Void
}
