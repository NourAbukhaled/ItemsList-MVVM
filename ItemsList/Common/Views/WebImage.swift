//
//  WebImage.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 03/08/2022.
//

import SwiftUI

struct WebImage: View {
    let url: String
    @State private var imageData: Data = .init()
    
    var body: some View {
        Image(uiImage: ((imageData.count == 0) ? UIImage(systemName: "photo")! : UIImage(data: imageData))!)
            .resizable()
            .onAppear { self.loadImage() }
    }
    
    private func loadImage() {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.imageData = data
            }
        }.resume()
    }
}

struct WebImage_Previews: PreviewProvider {
    static var previews: some View {
        WebImage(url: "")
    }
}
