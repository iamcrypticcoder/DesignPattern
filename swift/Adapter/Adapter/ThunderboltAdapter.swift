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
        
        if connection is EthernetConnection {
            let sequence = stride(from: 0, to: data.count, by: 10)
            for i in sequence {
                let start = data.index(data.startIndex, offsetBy: i)
                let end = i + 10 >= data.count ?
                    data.index(data.endIndex, offsetBy: 0) :
                    data.index(data.startIndex, offsetBy: i+10)
                connection.sendPacket(String(data[start..<end]))
            }
            return
        }
        
        if connection is MobileDataConnection {
            let sequence = stride(from: 0, to: data.count, by: 5)
            for i in sequence {
                let start = data.index(data.startIndex, offsetBy: i)
                let end = i + 5 >= data.count ?
                    data.index(data.endIndex, offsetBy: 0) :
                    data.index(data.startIndex, offsetBy: i+5)
                connection.sendPacket(String(data[start..<end]))
            }
            return
        }
    }
}
