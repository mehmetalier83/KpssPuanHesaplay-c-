// 
//  Kpss_Puan_HesaplayiciApp.swift
//  Kpss-Puan-Hesaplayici
//
//  Created by Mehmet Ali Er on 14.06.2024.
//

import SwiftUI

@main
struct Kpss_Puan_HesaplayiciApp: App {
    
    init() {
        let appearanceNav = UINavigationBarAppearance()
        appearanceNav.configureWithOpaqueBackground()
        UINavigationBar.appearance().standardAppearance = appearanceNav
        UINavigationBar.appearance().scrollEdgeAppearance = appearanceNav
        
        let appearanceBar = UITabBarAppearance()
        appearanceBar.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appearanceBar
        UITabBar.appearance().scrollEdgeAppearance = appearanceBar
    }
    
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
