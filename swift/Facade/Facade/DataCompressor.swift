import Foundation

public class DataCompressor {
    private var compressorAlgo: CompressionAlgorithm
    
    init(_ algo: CompressionAlgorithm) {
        self.compressorAlgo = algo
    }
    
    func compress(_ data: String) -> String? {
        switch compressorAlgo {
        case .CompressionAlgorithm_GZIP:
            return data
        case .CompressionAlgorithm_BZIP:
            return data
        default:
            return nil
        }
    }
}
