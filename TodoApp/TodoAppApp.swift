//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Majkel on 04/12/2021.
//

import SwiftUI

/*
 MVVM
 
 Model - data point
 View - UI
 ViewModel - manages Models for View 
 */

@main
struct TodoAppApp: App {
    @StateObject var todoViewModel: TodoViewModel = TodoViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TodoView()
            }
            .environmentObject(todoViewModel)
        }
    }
}

