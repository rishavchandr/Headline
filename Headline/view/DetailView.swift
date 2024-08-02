//
//  DetailView.swift
//  Headline
//
//  Created by Rishav chandra on 02/08/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        webView(urlString: url)
    }
}

#Preview {
    DetailView(url: "http")
}

struct webView : UIViewRepresentable {
    let urlString : String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
