//
//  ContentView.swift
//  SegueSwitUI
//
//  Created by Mike Melko on 7/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LogoContentView()) {
                    Text("View EY logo")
                }
            }
        } 
    }
}

struct LogoContentView: View {
    var body: some View {
            VStack {
                Image("EYLogo")
                    .padding()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
