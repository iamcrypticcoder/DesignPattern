import Foundation

protocol PostAnalyzeStrategy {
    func analyze(_ posts: [Post]) -> Void
}
