import Foundation

let user: User = User()

user.addPost(Post("Post 1", 10, 5, 5))
user.addPost(Post("Post 2", 10, 5, 5))
user.addPost(Post("Post 3", 10, 0, 0))
user.addPost(Post("Post 4", 0, 0, 10))

user.analyzePosts(LaughAnalyzeStrategy())
user.analyzePosts(SadnessAnalysisStrategy())
