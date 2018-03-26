import Foundation

class EthernetConnection : Connection {
    
    init() {
        
    }
    
    func makeReady() {
        print("Making Ethernet Ready...")
    }
    
    func isReady() -> Bool {
        return arc4random_uniform(2) == 0
    }
    
    func sendPacket(_ data: String) {
        if data.count > 10 { return }
        print("Packet sent. [\(data)]")
    }
}
