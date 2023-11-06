import UIKit

//DispatchQueue.global().async {
//    for i in 0..<10 {
//        print(i)
//    }
//
//    for _ in 0..<10 {
//        print("🔵")
//    }
//
//    for _ in 0..<10 {
//        print("💔")
//    }
//}

//DispatchQueue.global().async {
//    print("Inside")
//}
//print("Outside")

let serial1 = DispatchQueue(label: "com.besher.serial1")
let serial2 = DispatchQueue(label: "com.besher.serial2")

serial1.async {
    for _ in 0..<5 { print("🔵") }
}

serial2.async {
    for _ in 0..<5 { print("🔴") }
}

//
let serial = DispatchQueue(label: "com.besher.serial")


serial.async {
    for _ in 0..<5 { print("🔵") }
}

serial.async {
    for _ in 0..<5 { print("🔴") }
}

//let concurret = DispatchQueue(label: "com.besher.serial",attributes: .concurrent)


//concurret.async {
//    for _ in 0..<5 { print("🔵") }
//}
//
//concurret.async {
//    for _ in 0..<5 { print("🔴") }
//}
