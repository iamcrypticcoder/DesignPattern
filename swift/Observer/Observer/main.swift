import Foundation

let printMedia: Newspaper = Newspaper()
let onlineMedia: Internet = Internet()

let appl = AppleInc(665.45)
appl.registerObserver(printMedia)
appl.registerObserver(onlineMedia)
appl.setFaceValue(660.00)
appl.notifyObservers()
