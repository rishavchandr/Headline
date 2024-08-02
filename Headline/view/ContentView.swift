//
//  ContentView.swift
//  Headline
//
//  Created by Rishav chandra on 02/08/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = Network()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Headline")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}




