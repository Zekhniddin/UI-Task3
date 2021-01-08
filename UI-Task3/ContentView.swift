//
//  ContentView.swift
//  UI-Task3
//
//  Created by Зехниддин on 08/01/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            TabView {
                ImagePageTabView(name: "photo1")
                ImagePageTabView(name: "photo2")
                ImagePageTabView(name: "photo3")
                ImagePageTabView(name: "photo4")
                ImagePageTabView(name: "photo5")
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct ImagePageTabView: View {
    var name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity)
            .clipped()
            .shadow(color: .gray, radius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

