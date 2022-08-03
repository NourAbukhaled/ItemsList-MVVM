//
//  ListView.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import SwiftUI

struct ListView: View {
    
    // MARK: Properties
    @ObservedObject
    private var viewModel = ListViewModel()
    
    // MARK: Body
    var body: some View {
        NavigationView {
            Group {
                if case let .error(error) = self.viewModel.state {
                    
                } else if case .loading = self.viewModel.state {
                    ProgressView("Loading..")
                } else {
                    List(viewModel.state.items.first ?? [], id: \.self) { item in
                        NavigationLink(
                            destination: DetailsView(item: item),
                            label: {
                                ItemRow(item: item)
                            })
                    }
                }
            }
            .navigationBarTitle("List")
            .onAppear {
                self.viewModel.onAppear()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
