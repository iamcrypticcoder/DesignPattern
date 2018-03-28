import Foundation

class AppleInc : Observable {
    var observers: [Observer] = [Observer]()
    var faceValue: Double = 0.0
    
    init() {
        
    }
    
    init(_ faceValue: Double) {
        self.faceValue = faceValue
    }
    
    func setFaceValue(_ faceValue: Double) -> Void {
        self.faceValue = faceValue
        notifyObservers()
    }
    
    func registerObserver(_ observer: Observer) -> Void {
        self.observers.append(observer)
    }
    
    func removeObserver(_ observer: Observer) -> Void {
        // Need to implement
        //self.observers.remove(at: self.observers.index(where: { $0 == observer}))
    }
    
    func notifyObservers() {
        for observer in observers {
            print("Notifying Observers on change in face value")
            observer.update(faceValue)
        }
    }
}
