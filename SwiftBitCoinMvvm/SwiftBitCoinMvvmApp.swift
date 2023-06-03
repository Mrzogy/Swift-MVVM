//
//  SwiftBitCoinMvvmApp.swift
//  SwiftBitCoinMvvm
//
//  Created by 3bood on 14/11/1444 AH.
//

import SwiftUI

@main
struct SwiftBitCoinMvvmApp: App {
    @StateObject private var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
