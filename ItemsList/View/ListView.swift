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
                    ReloadView(errorMessage: error) {
                        viewModel.onAppear()
                    }
                } else if case .loading = self.viewModel.state {
                    ProgressView("Loading..")
                } else {
                    ScrollView {
                        LazyVStack {
                            ForEach(self.viewModel.state.items, id: \.self) { item in
                                NavigationLink(destination: DetailsView(item: item)) {
                                    ItemRow(item: item)
                                        .padding(8)
                                }
                            }
                        }
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
