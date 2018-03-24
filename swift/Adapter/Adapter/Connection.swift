//
//  Connection.swift
//  Adapter
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

protocol Connection {
    func makeReady() -> Void
    func isReady() -> Bool
    func sendPacket(_ data: String) -> Void
}
