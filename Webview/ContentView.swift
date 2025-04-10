//
//  ContentView.swift
//  Webview
//
//  Created by Maks Kolendiuk on 10.04.2025.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        VStack {
            WebView(urlString: "https://www.google.com/")

        }
        .padding()
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl) {
                let request = URLRequest(url: url)
                if let webView = uiView as? WKWebView {
                    webView.load(request)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
