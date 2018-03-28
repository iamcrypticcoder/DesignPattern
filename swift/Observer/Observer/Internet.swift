import Foundation

class Internet: Observer {
    func update(_ faceValue: Double) -> Void {
        print("Internet: Face Value of AppleInc updated, new Value is: \(faceValue)")
    }
}
