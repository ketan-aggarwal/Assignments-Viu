
protocol Addable{
    static func +(lhs:Self,rhs:Self)->Self
        
}
protocol Subtraction{
    static func -(lhs:Self,rhs:Self)->Self
}
extension Int:Addable,Subtraction{}
extension Double:Addable,Subtraction{}



class ABC {
    func add<T: Addable>(num1: T, num2: T) -> T {   //generic type
        return num1 + num2
    }
    func sub<T:Subtraction>(num1:T,num2:T) -> T{
        return num1-num2
    }
}

let abc = ABC()
let sum = abc.add(num1: 6, num2: 7)
let sum1 = abc.add(num1: 9, num2: 8.7)
print(sum)
let diff = abc.sub(num1: 5, num2: 3)
print(diff)
