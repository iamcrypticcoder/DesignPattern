import Foundation

class DataSpliter {
    let packetSize: Int
    
    init(_ packetSize: Int) {
        self.packetSize = packetSize
    }
    
    func splitData(_ data: String) -> [String] {
        var retList = [String]()
        let sequence = stride(from: 0, to: data.count, by: packetSize)
        for i in sequence {
            let start = data.index(data.startIndex, offsetBy: i)
            let end = i + packetSize >= data.count ?
                data.index(data.endIndex, offsetBy: 0) :
                data.index(data.startIndex, offsetBy: i+packetSize)
            retList.append(String(data[start..<end]))
        }
        return retList
    }
}
