//
//  MockTodoStore.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import Foundation

class MockTodoStore: TodoStore {
    required init(_ initialState: ReducerType.StateType = ReducerType.StateType(), reducer: ReducerType = ReducerType()) {
        let mockData = [
            TodoItem(id: UUID(), name: "Element 1", isCompleted: false, isDeleted: false),
            TodoItem(id: UUID(), name: "Element 2", isCompleted: false, isDeleted: false),
            TodoItem(id: UUID(), name: "Element 3", isCompleted: false, isDeleted: true),
            TodoItem(id: UUID(), name: "Element 4", isCompleted: true, isDeleted: false),
            TodoItem(id: UUID(), name: "Element 5", isCompleted: false, isDeleted: false)
        ]
        
        super.init(mockData, reducer: reducer)
    }
}
