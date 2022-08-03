//
//  DetailsView.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import SwiftUI

struct DetailsView: View {
    
    var item: ItemModel
    
    var body: some View {
       
            ScrollView {
                VStack(alignment: .center) {
                    ZStack(alignment: .bottomTrailing) {
                        WebImage(url: item.imageUrls.first ?? "")
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 4)
                            .shadow(radius: 7))
                            .frame(height: 550)
                    }
                    VStack {
                        Text("Name: " + item.name)
                            .frame(maxHeight: 97)
                        Text("Price: " + item.price).padding()
                            .frame(maxHeight: 97)
                    }
                }
            }.onAppear {  }
        .navigationBarTitle(item.name, displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(item: .example)
    }
}
