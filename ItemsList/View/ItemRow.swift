//
//  ItemRow.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import SwiftUI

struct ItemRow: View {
    
    // MARK: Properties
     var item: ItemModel
    
    // MARK: Body
    var body: some View {
        ZStack(alignment: .leading) {
            Color.gray
            HStack(alignment: .center, spacing: 10) {
                WebImage(url: item.imageURL ?? "")
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .frame(width: 110, height: 140)
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 10, y: 10)
                VStack(alignment: .leading, spacing: 20) {
                    Text(item.name)
                        .font(.headline)
                    Text(item.price)
                }
            }
        }.clipShape(RoundedRectangle(cornerRadius: 15))
        .foregroundColor(.white)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: .example)
    }
}
