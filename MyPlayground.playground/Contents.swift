import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


let a = DispatchQueue(label:"A")

let b = DispatchQueue(label:"B",attributes: [.concurrent,.initiallyInactive])

b.setTarget(queue: a)

b.async {
    print("hello")
}
b.activate()

