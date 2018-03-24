//
//  ThunderboltAdapter.swift
//  Adapter
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

class ThunderboltAdapter {
    var connection: Connection
    
    init(_ connection: Connection) {
        self.connection = connection
    }
    
    func sendData(_ data: String) {
        // Need to implement
        /*
        if connection is EthernetConnection {
            let sequence = stride(from: 0, to: data.count, by: 10)
            for i in sequence {
                let len: Int = (i + 10) > data.count ? data.count - i : 10
                let subStr = String(data.substring(with: i..<i+len))
                connection.sendPacket(subStr)
            }
            return
        }
        
        if connection is MobileDataConnection {
            let sequence = stride(from: 0, to: data.count, by: 10)
            for i in sequence {
                let len: Int = (i + 10) > data.count ? data.count - i : 10
                let subStr = Range(i, in: i+len)
                connection.sendPacket(subStr)
            }
            return
        }
 */
    }
}
