//
//  DetailsView.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import SwiftUI

struct DetailsView: View {
    // MARK: Properties
    var item: ItemModel
    
    // MARK: Body
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                ZStack(alignment: .bottomTrailing) {
                    WebImage(url: item.imageURL ?? "")
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4)
                                    .shadow(radius: 7))
                        .frame(height: 550)
                }
                VStack {
                    Text("Name: " + item.name)
                    Text("Price: " + item.price)
                    Text("created at: " + item.createdAt)
                }
            }
        }
        .padding()
        .navigationBarTitle(item.name, displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(item: .example)
    }
}
