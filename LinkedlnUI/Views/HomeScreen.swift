//
//  HomeScreen.swift
//  LinkedlnUI
//
//  Created by Daniel on 07.11.2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            ProfileAndPostView()
            PostView()
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
