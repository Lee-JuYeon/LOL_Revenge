//
//  RecentHistory.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI
import WebKit

struct RecentHistory : View {
    
    private var getSummonerName : String = ""
    
    init(
        setSummonerName : String
    ){
        self.getSummonerName = setSummonerName
    }
    
    private func getOPGGurl() -> String{
        let url = "https://www.op.gg/summoners/kr/\(self.getSummonerName)"
        return url
    }
    
    var body : some View {
        WebView(urlString: getOPGGurl())
    }
}


struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        // Optional: Add WKNavigationDelegate methods if needed
        // For example, to handle page loading completion or errors
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("Web page loaded successfully!")
        }

        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            print("Failed to load web page: \(error.localizedDescription)")
        }
    }
}
