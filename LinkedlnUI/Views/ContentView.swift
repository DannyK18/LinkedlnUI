//
//  ContentView.swift
//  LinkedlnUI
//
//  Created by Daniel on 06.11.2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("MyNetwork")
                }
            ProfileAndPostView()
                .tabItem {
                    Image(systemName: "book")
                    Text("News")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
