//
//  ItemRow.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import SwiftUI

struct ItemRow: View {
    
    private let item: ItemModel
    init(item: ItemModel) {
        self.item = item
    }
    
    var body: some View {
        
        HStack(alignment: .center) {
        
            // MARK: Image
            WebImage(url: item.imageUrls.first ?? "")
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .frame(width: 110, height: 140)
                .aspectRatio(contentMode: .fill)
                .shadow(radius: 10, y: 10)
        
            // MARK: Details
            VStack(alignment: .leading, spacing: 20) {
                // MARK: Name
                Text(item.name)
                    .font(.headline)
                
                // MARK: Start Date
                Text(item.price)
            }
            Spacer()
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: ItemModel(createdAt: "njnon",
                                price: "dnewo",
                                name: "dnwlnl",
                                uid: "k2okpodk",
                                imageIds: ["pwqopdo"],
                                imageUrls: ["String"],
                                imageUrlsThumbnails: ["String"]))
    }
}
