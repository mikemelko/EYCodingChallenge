import Combine
import Foundation

    var subscription: Cancellable? = Timer.publish(every: 1, on: .main, in: .common)
    .autoconnect()
    .print()
//    .sink { (output) in
//        print("Finished stream with the output received \(output)")
//    } receiveValue: { (value) in
//        print("Received value \(value)")
//    }

    .sink { (_) in }

RunLoop.main.schedule(after: .init(Date(timeIntervalSinceNow: 5))) {
    subscription = nil
}
