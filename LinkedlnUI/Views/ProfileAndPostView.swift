//
//  ProfileAndPostView.swift
//  LinkedlnUI
//
//  Created by Daniel on 07.11.2022.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SearchBar()
            
            Divider()
            
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                
                Spacer()
                
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Video")
                
                Spacer()
                
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Event")
            }.padding(.horizontal)
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
