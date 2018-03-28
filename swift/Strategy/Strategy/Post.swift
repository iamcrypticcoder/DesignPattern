import Foundation

class Post {
    var text: String?
    var likeCount: Int = 0
    var sadCount: Int = 0
    var laughCount: Int = 0
    
    init(_ text: String) {
        self.text = text
    }
    
    convenience init(_ text: String, _ likeCount: Int, _ sadCount: Int, _ laughCount: Int) {
        self.init(text)
        self.likeCount = likeCount
        self.sadCount = sadCount
        self.laughCount = laughCount
    }
}
