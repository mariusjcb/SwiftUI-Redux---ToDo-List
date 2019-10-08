//
//  TodoReducer.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import Foundation

enum TodoAction {
    case addTodo(String)
    case complete(IndexSet)
    case delete(IndexSet)
    case deleteItem(TodoItem)
}

struct TodoReducer: Reducer {
    typealias ActionType = TodoAction
    typealias ItemType = TodoItem
    typealias StateType = [ItemType]
    
    func reduce(_ oldState: TodoReducer.StateType, action: TodoReducer.ActionType) -> TodoReducer.StateType {
        var newState = oldState
        
        switch action {
        case .addTodo(let title):
            let item = TodoItem(id: UUID(), name: title)
            newState.append(item)
        case .complete(let offset):
            guard var item = newState.item(at: offset) else { return oldState }
            item.complete()
            return newState.replacingItem(at: offset,
                                          with: item)
        case .delete(let offset):
            guard var item = newState.item(at: offset) else { return oldState }
            item.delete()
            return newState.replacingItem(at: offset,
                                          with: item)
        case .deleteItem(let item):
            guard let offset = newState.firstIndex(where: { $0.id == item.id }) else { return oldState }
            var item = item
            item.delete()
            return newState.replacingItem(at: offset,
                                          with: item)
        }
        
        return newState
    }
}
