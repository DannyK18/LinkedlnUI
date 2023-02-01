//
//  InvitationView.swift
//  LinkedlnUI
//
//  Created by Daniel on 07.11.2022.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Maria", position: "SDE at Paytm", mutual: 34, image: "00")

struct InvitationView: View {
    var data: NetworkModel

    var body: some View {
        
            HStack(alignment: .center, spacing: 5) {
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 90, height: 90, alignment: .leading)
                VStack(alignment: .leading) {
                    Text(data.name)
                        .font(.body)
                        Text(data.position)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("\(data.mutual) mutual connections")
                            .font(.caption)
                            .foregroundColor(.gray)
                }
                .frame(width: 150, height: 20, alignment: .leading)
            
                HStack {
                    Image(systemName: "xmark.circle")
                        .font(.system(size: 35))
                    .foregroundColor(.gray)
            Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue)
                    .opacity(0.7)
                }.padding(.horizontal)
        }
            .frame(width: .infinity, height: .infinity)
            .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(data: sampleData)
    }
}
