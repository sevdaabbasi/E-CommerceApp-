//
//  ContentView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 7.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        TabView (selection: $currentTab){
           
            Text("Home View")
            Text("Search View")
            Text("Notification View")
            Text("Cart View")
            Text("Profile View")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab: String, CaseIterable{
    case Home = "house"
    case Search = "magnifyingglass.circile"
    case Notification = "bell"
    case Cart = "bag"
    case Profile = "Person"
    
    var Tabname: String {
        switch self {
        case.Home:
            return "Home"
        case.Search:
            return "Search"
        case.Notification:
            return "Notification"
        case.Cart:
            return "Cart"
        case.Profile:
            return "Profile"
        }
    }
    
}
extension View {
   func getSafeArea () -> UIEdgeInsets
}
