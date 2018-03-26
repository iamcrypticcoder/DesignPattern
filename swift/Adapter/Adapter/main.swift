import Foundation

let DEMO_TEXT: String = "My Name is Mahbub. I like to use design pattern as much as possible because design patterns helps to write scalable code."

let ethernetConn: EthernetConnection = EthernetConnection()
let mobileDataConn: MobileDataConnection = MobileDataConnection()

var adapter: ThunderboltAdapter = ThunderboltAdapter(ethernetConn)
adapter.sendData(DEMO_TEXT)

adapter = ThunderboltAdapter(mobileDataConn)
adapter.sendData(DEMO_TEXT)

