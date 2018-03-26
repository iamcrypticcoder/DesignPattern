import Foundation

enum CompressionAlgorithm {
    case CompressionAlgorithm_GZIP
    case CompressionAlgorithm_BZIP
}

class Protocol {
    private let dataCompressor: DataCompressor
    private let dataSpliter: DataSpliter
    private let packetSender: PacketSender
    
    init(_ algo: CompressionAlgorithm, _ packetSize: Int) {
        self.dataCompressor = DataCompressor(algo)
        self.dataSpliter = DataSpliter(packetSize)
        self.packetSender = PacketSender()
    }
    
    func sendData(_ data: String) -> Void {
        let compressedData: String? = dataCompressor.compress(data)
        let packetList: [String] = dataSpliter.splitData(compressedData!)
        for packet in packetList {
            packetSender.sendPacket(packet)
        }
    }
}
