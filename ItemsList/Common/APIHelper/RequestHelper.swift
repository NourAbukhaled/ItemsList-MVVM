//
//  RequestHelper.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 03/08/2022.
//

import Foundation
import Combine

final class RequestHelper {
        
    private enum Path {
        static let list = "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/dynamodb-writer"
    }
        
    func loadList() -> AnyPublisher<ResultModel, Error> {
        APIClient
            .path(Path.list)
            .fetch()
    }
}
