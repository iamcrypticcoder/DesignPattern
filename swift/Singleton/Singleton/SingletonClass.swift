import Foundation

class SingletonClass {
    
    static let sharedInstance: SingletonClass = SingletonClass()
    
    private init() {
        
    }
    
    func testMethod() -> Void {
        print("Hi")
    }
}
