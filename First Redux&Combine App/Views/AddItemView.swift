//
//  AddItemView.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import SwiftUI

struct AddItemView: View {
    @ObservedObject var store: TodoStore
    
    @State private var name: String = ""
    @State private var addMode: Bool = false
    
    var body: some View {
        HStack {
            if addMode {
                TextField("Add Note...", text: $name)
                
                Button(action: {
                    self.store.dispatch(action: .addTodo(self.name))
                    self.name = ""
                    self.addMode = false
                }, label: {
                    Text("Add")
                })
            } else {
                Button(action: {
                    self.addMode = true
                }, label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add Item")
                    }.foregroundColor(Color.green)
                })
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(store: MockTodoStore())
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
