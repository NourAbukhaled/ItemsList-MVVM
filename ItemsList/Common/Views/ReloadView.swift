//
//  ReloadView.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 04/08/2022.
//

import SwiftUI

struct ReloadView: View {
    let errorMessage: String
    let handler: (() -> Void)
    
    var body: some View {
        VStack {
            Text(errorMessage)
            Button(action: handler, label: {
                Image("reload")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                
            })
        }
    }
}

struct ReloadView_Previews: PreviewProvider {
    static var previews: some View {
        ReloadView(errorMessage: "Error message") {
            print("retry")
        }
    }
}

