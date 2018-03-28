import Foundation

let library: Library = Library("KUET Central Library")
library.addBook(Book("Design Pattern", noPages: 456, price: 75.5))
library.addBook(Book("Introduction to Java", noPages: 666, price: 110))

let v1 = AveragePriceCalcVisitor()
let v2 = AveragePageCalcVisitor()

library.accept(v1)
print("Avg Price: \(v1.getAvgPrice())")

library.accept(v2)
print("Avg Page: \(v2.getAvgPage())")

library.addBook(Book("Introduction to Java", noPages: 1025, price: 225))

library.accept(v1)
print("Avg Price: \(v1.getAvgPrice())")

library.accept(v2)
print("Avg Page: \(v2.getAvgPage())")

