import Foundation

protocol Visitable {
    func accept(_ visitor: LibraryVisitor) -> Void
}
