import Foundation

class LaughAnalyzeStrategy : PostAnalyzeStrategy {
    func analyze(_ posts: [Post]) -> Void {
        let postCount: Int = posts.count
        var totalLaughCount: Int = 0
        for post in posts {
            totalLaughCount += post.laughCount
        }
        let val: Double = Double(totalLaughCount / postCount)
        print("Laugh Value: \(val)")
    }
}
