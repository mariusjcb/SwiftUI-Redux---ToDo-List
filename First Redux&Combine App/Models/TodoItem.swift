//
//  TodoItem.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import Foundation

struct TodoItem: AnyReducible {
    let id: UUID
    let name: String
    var isCompleted: Bool = false
    var isDeleted: Bool = false
    
    mutating func complete() {
        self.isDeleted = true
    }
    
    mutating func delete() {
        self.isDeleted = true
    }
}
