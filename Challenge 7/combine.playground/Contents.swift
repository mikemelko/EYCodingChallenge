import Foundation
import Combine

let notification = Notification.Name("Notification")
let center = NotificationCenter.default

let publisher = center.publisher(for: notification, object: nil)
let subscription = publisher
  .sink { _ in
    print("Hello world!")
  }
center.post(name: notification, object: nil)
subscription.cancel()
