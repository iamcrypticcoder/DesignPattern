//
//  main.swift
//  Adapter
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

let DEMO_TEXT: String = "My Name is Mahbub. I like to use design pattern as much as possible because design patterns helps to write scalable code."

let ethernetConn: EthernetConnection = EthernetConnection()
let mobileDataConn: MobileDataConnection = MobileDataConnection()

var adapter: ThunderboltAdapter = ThunderboltAdapter(ethernetConn)
adapter.sendData(DEMO_TEXT)

adapter = ThunderboltAdapter(mobileDataConn)
adapter.sendData(DEMO_TEXT)

