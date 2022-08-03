//
//  ListState.swift
//  ItemsList
//
//  Created by Nour Abukhaled on 03/08/2022.
//

import Foundation

enum ListState<T> {
    
    case populated(T)
    case error(String)
    case loading
    
    var items: T {
        guard case let .populated(items) = self else { return [] as! T }
        return items
    }
}
