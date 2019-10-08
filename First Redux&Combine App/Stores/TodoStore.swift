//
//  Store.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import Foundation
import Combine

class TodoStore: ReduceStore {
    typealias ReducerType = TodoReducer
    
    @Published internal var currentState: ReducerType.StateType
    var state: ReducerType.StateType { return currentState }
    var reducer: ReducerType
    
    required init(_ initialState: ReducerType.StateType = ReducerType.StateType(), reducer: ReducerType = ReducerType()) {
        self.reducer = reducer
        self.currentState = initialState
    }
}
