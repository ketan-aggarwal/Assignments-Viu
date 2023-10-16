class ArrayUtility<T> {
    var array: [T]

    init(array: [T]) {
        self.array = array
    }

    func sortArray(by isOrderedBefore: (T, T) -> Bool) {
        for i in 0..<array.count {
            for j in i+1..<array.count {
                if isOrderedBefore(array[j], array[i]) {
                    let temp = array[i]
                    array[i] = array[j]
                    array[j] = temp
                }
            }
        }
    }
    func filterArray(_ isIncluded: (T) -> Bool) -> [T] {
           var result = [T]()
           for element in array {
               if isIncluded(element) {
                   result.append(element)
               }
           }
           return result
       }
    func mapArray<U>(_ transform: (T) -> U) -> [U] {
            var result = [U]()
            for element in array {
                let transformedElement = transform(element)
                result.append(transformedElement)
            }
            return result
        }
}
let numbers=[5,2,9,3,6,1]
let utility=ArrayUtility(array:numbers)

utility.sortArray{(a,b)->Bool in
 return a<b
}
print(utility.array)

let filteredArray=utility.filterArray { (element) -> Bool in
    return element % 2 == 0
}

print(filteredArray)

let mappedArray=utility.mapArray { (element) -> Int in
    return element * element
}
print(mappedArray)




class Shape {
    func getArea() -> Double {
        return 0.0
    }
    func getPerm()->Double{
        return 0.0
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double

    init(width: Double,height: Double) {
        self.width = width
        self.height = height
    }

    override func getArea()->Double {
        return width * height
    }
    override func getPerm()->Double{
        return 2*(width+height)
    }
}

let rectangle = Rectangle(width: 5.0, height: 4.0)
let area = rectangle.getArea()
let perm=rectangle.getPerm()
print("The area is: \(area)")
print("The perimeter is: \(perm)")









