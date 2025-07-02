//
//  VideoView.swift
//  PopSign
//
//  Created by Tony Nguyen on 7/1/25.
//

import SwiftUI
import WebKit
struct VideoView: View {
    var body: some View {
        VStack {
            Text("You'll be learning")
                .font(.headline)
            YouTubeView(videoID: "RII-L4FZ-hU")
                .frame(height: 200)
                .cornerRadius(12)
                .shadow(radius: 4)
        }
        .padding()
    }
}
struct YouTubeView: UIViewRepresentable {
    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let embedHTML = """
        <!DOCTYPE html>
        <html>
        <head>
            <style>
                body, html {
                    margin: 0;
                    padding: 0;
                    height: 100%;
                    width: 100%;
                }
                iframe {
                    position: absolute;
                    top: 0;
                    left: 0;
                    height: 100%;
                    width: 100%;
                }
            </style>
        </head>
        <body>
            <iframe src="https://www.youtube.com/embed/\(videoID)?playsinline=1"
                    frameborder="0"
                    allowfullscreen>
            </iframe>
        </body>
        </html>
        """
        uiView.loadHTMLString(embedHTML, baseURL: nil)
    }
}


#Preview {
    VideoView()
}
