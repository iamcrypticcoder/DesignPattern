import Foundation

class User {
    var posts: [Post] = [Post]()
    
    func addPost(_ post: Post) -> Void {
        posts.append(post)
    }
    
    func analyzePosts(_ strategy: PostAnalyzeStrategy) -> Void {
        strategy.analyze(self.posts)
    }
}
