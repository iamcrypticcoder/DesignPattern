import Foundation

protocol Observable {
    func registerObserver(_ observer: Observer) -> Void
    func removeObserver(_ observer: Observer) -> Void
    func notifyObservers()
}
