import Foundation

class Newspaper : Observer {
    func update(_ faceValue: Double) -> Void {
        print("Newspaper: Face Value of AppleInc updated, new Value is: \(faceValue)")
    }
}
