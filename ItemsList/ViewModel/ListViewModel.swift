//
//  ListViewModel.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 02/08/2022.
//

import Foundation
import Combine

final class ListViewModel: ObservableObject {
    
    // MARK: Properties
    @Published var state: ListState<[ItemModel]> = .loading
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: LifeCycle
    func onAppear() {
        RequestHelper().loadList()
            .sink(receiveCompletion: { [weak self] result in
                switch result {
                case .finished:
                    break
                case let .failure(error):
                    self?.state = .error(error.localizedDescription)
                }
            }, receiveValue: { [weak self] value in
                let items = value.results
                self?.state = .populated([items])
            }).store(in: &cancellables)
    }
}
