import Foundation

class SadnessAnalysisStrategy : PostAnalyzeStrategy {
    func analyze(_ posts: [Post]) -> Void {
        let postCount: Int = posts.count
        var totalSadCount: Int = 0
        for post in posts {
            totalSadCount += post.sadCount
        }
        let val: Double = Double(totalSadCount / postCount)
        print("Laugh Value: \(val)")
    }
}
