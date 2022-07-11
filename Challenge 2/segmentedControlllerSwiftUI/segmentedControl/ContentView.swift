//
//  ContentView.swift
//  segmentedControl
//
//  Created by Mike Melko on 6/27/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var color = 0

  let colors = [Color.red, Color.green, Color.blue, Color.yellow, Color.orange, Color.purple]

  var body: some View {
      VStack {
          Picker("picker", selection: $color) {
              Text("Red").tag(0)
              Text("Green").tag(1)
              Text("Blue").tag(2)
              Text("Yellow").tag(3)
              Text("Orange").tag(4)
              Text("Purple").tag(5)
          }
          .pickerStyle(.segmented).colorMultiply(colors[color])

          Text("Color index: \(color)")
      }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
