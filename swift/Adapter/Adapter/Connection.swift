import Foundation

protocol Connection {
    func makeReady() -> Void
    func isReady() -> Bool
    func sendPacket(_ data: String) -> Void
}
