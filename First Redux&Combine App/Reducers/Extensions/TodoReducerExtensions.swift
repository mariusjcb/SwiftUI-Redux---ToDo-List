//
//  TodoReducerExtensions.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import Foundation

extension Array where Element == TodoReducer.ItemType {
    func item(at offset: IndexSet) -> Element? {
        guard let offset = offset.first else {
            return nil
        }
        
        return self
            .enumerated()
            .first(where: { $0.offset == offset })?.element
    }
}
