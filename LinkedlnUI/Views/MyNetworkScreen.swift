//
//  MyNetworkScreen.swift
//  LinkedlnUI
//
//  Created by Daniel on 07.11.2022.
//

import SwiftUI

var networkData: [NetworkModel] = [
        .init(id: 0, name: "Mary", position: "SDE at Paytm", mutual: 34, image: "00"),
        .init(id: 1, name: "Peter", position: "SDE at Amazon", mutual: 45, image: "01"),
        .init(id: 2, name: "Jenny", position: "SDE at Ginger", mutual: 67, image: "02"),
        .init(id: 3, name: "Sara", position: "open to work", mutual: 103, image: "03"),
        .init(id: 4, name: "Kia", position: "Get a HCL", mutual: 12, image: "04"),
        .init(id: 5, name: "Shristi", position: "Student", mutual: 78, image: "05"),
        .init(id: 6, name: "Rachel", position: "Intern at iNeuron", mutual: 90, image: "00"),
        .init(id: 7, name: "Kia", position: "Get a HCL", mutual: 8, image: "04"),
        .init(id: 8, name: "Kia", position: "Get a HCL", mutual: 34, image: "04")
]
struct MyNetworkScreen: View {
    var body: some View {
        VStack {
            SearchBar()
            HStack {
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(width: .infinity, height: 10)
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                Text("Invitations")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                Divider()
                
                ForEach(networkData, id: \.id) { item in
                    InvitationView(data: item)
                    Divider()
                }
            }
        }
    }
}

struct MyNetworkScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworkScreen()
    }
}
