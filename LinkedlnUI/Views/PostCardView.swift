//
//  PostCardView.swift
//  LinkedlnUI
//
//  Created by Daniel on 07.11.2022.
//

import SwiftUI

struct SocialView {
    var id: Int
    var image: String
    var title: String
}
var socialView: [SocialView] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane", title: "Send")
]

let samplePostData = PostData(id: 1, image: "02", title: "Danyil Klymchuk", followers: 5, profileImage: "1")
struct PostCardView: View {
    let data: PostData
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .edgesIgnoringSafeArea(.all)
            HStack(alignment: .center) {
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Text("Looking for a new course on IOS with SwiftUI, you are already at great pleace.")
            
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePostData)
    }
}
