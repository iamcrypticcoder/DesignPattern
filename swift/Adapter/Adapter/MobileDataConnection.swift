import Foundation

class MobileDataConnection: Connection {
    
    func makeReady() {
        print("Making MobileData Ready...")
    }
    
    func isReady() -> Bool {
        return arc4random_uniform(2) == 0
    }
    
    func sendPacket(_ data: String) {
        if data.count > 10 { return }
        print("Packet sent. [\(data)]")
    }
    
}
