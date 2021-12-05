//
//  ItemModel.swift
//  TodoApp
//
//  Created by Majkel on 04/12/2021.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let date = Date()
    let category: String
    let isCompleted: Bool
}
