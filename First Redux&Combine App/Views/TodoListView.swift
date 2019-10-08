//
//  TodoListView.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import SwiftUI

struct TodoListView: View {
    @ObservedObject var store: TodoStore
    
    var visibleElements: TodoStore.ReducerType.StateType {
        return store.state.filter { $0.isDeleted == false }
    }
    
    var body: some View {
        List {
            AddItemView(store: store)
            
            ForEach(visibleElements, id: \.id) { item in
                Text(item.name)
            }.onDelete(perform: deleteItem)
        }
    }
    
    private func deleteItem(at offset: IndexSet) {
        guard let item = visibleElements.item(at: offset) else { return }
        store.dispatch(action: .deleteItem(item))
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView(store: MockTodoStore())
    }
}
