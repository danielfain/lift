//
//  ContentView.swift
//  lift
//
//  Created by Daniel Fain on 3/11/20.
//  Copyright © 2020 Daniel Fain. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                List {
                    Text("LOL")
                    Text("LMAO")
                }.navigationBarTitle("lift")
            }
            .tabItem {
                VStack {
                    Text("First")
                }
            }
            .tag(0)
            Text("Second View")
                .font(.headline)
                .tabItem {
                    VStack {
                        Text("Second")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
