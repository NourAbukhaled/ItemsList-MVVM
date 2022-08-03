//
//  ItemRow.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import SwiftUI

struct ItemRow: View {
    
    // MARK: Properties
    private let item: ItemModel
    
    init(item: ItemModel) {
        self.item = item
    }
    
    // MARK: Body
    var body: some View {
        HStack(alignment: .center) {
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
            Spacer()
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: .example)
    }
}
