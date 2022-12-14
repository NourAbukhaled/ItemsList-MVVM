//
//  APIClient.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 03/08/2022.
//

import Foundation
import Combine

class APIClient {
    private let session = URLSession.shared
    private let path: String
    
    init(path: String) {
        self.path = path
    }
    
    static func path(_ path: String) -> APIClient {
        .init(path: path)
    }
    
    func fetch<T: Decodable>() -> AnyPublisher<T, Error> {
        guard let url = URL(string: path) else {
            fatalError("invalid URL")
        }
        return session.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
