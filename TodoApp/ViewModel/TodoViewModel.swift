//
//  TodoViewModel.swift
//  TodoApp
//
//  Created by Majkel on 04/12/2021.
//

import Foundation

class TodoViewModel: ObservableObject  {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    func getItems() {
        let newItems = [
            ItemModel(name: "Xcode", category: "Code", isCompleted: true),
            ItemModel(name: "Buy a milk", category: "Shopping", isCompleted: false),
            ItemModel(name: "Fix the sink", category: "Home", isCompleted: false),
            ItemModel(name: "Play the Cyberpunk", category: "Hobby", isCompleted: true),
            ItemModel(name: "Go for a walk", category: "Other", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    func remoweItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func addItem(name: String, category: String) {
        let newItem = ItemModel(name: name, category: category, isCompleted: false)
        items.append(newItem)
    }
    
}
