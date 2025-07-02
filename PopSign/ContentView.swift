//
//  ContentView.swift
//  PopSign
//
//  Created by Tony Nguyen on 7/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 10) {
                VStack {
                    Text("Welcome to Popsign!")
                        .font(.headline)
                    Text("Nursery Rhymes")
                        .font(.subheadline)
                }
                .padding()
                .background(.green)
                .cornerRadius(10)
                
                Button(action: {
                    path.append("ChooseView")
                }) {
                    Text("Get Started")
                        .padding()
                        .background(.yellow)
                        .cornerRadius(100)
                }
                .padding(.bottom, 150)
                .navigationDestination(for: String.self) { value in
                    switch value {
                    case "ChooseView":
                        ChooseView(path: $path)
                            
                    case "VideoView":
                        //SettingsView()
                        VideoView()
                    default:
                        Text("Unknown destination: \(value)")
                    }
                }
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
