//
//  ContentView.swift
//  SwiftBitCoinMvvm
//
//  Created by 3bood on 14/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.theme.accent)
            Text("Hello, world!")
                .foregroundColor(.theme.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
