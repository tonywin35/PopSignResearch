//
//  ChooseView.swift
//  PopSign
//
//  Created by Tony Nguyen on 7/1/25.
//

import Foundation
import SwiftUI

struct ChooseView: View {
    @Binding var path: NavigationPath
    var body: some View {
        VStack {
            Text("StoryBooks")
                .padding(.top, 50)
                .padding(.bottom, 230)
            VStack {
                
                HStack(spacing: 30) {
                    Button(action: {
                        path.append("VideoView")
                    }) {
                        VStack {
                            Text("Old Mcdonald")
                                .foregroundColor(.black)
                            Image(systemName: "book")
                                .font(.system(size: 40))
                                .foregroundColor(.black)
                        }
                        .padding()
                        .background(.yellow)
                        .cornerRadius(10)
                        .padding(.bottom, 400)
                    }
                    VStack {
                        Text("Coming soon")
                        Image(systemName: "book")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .background(.green)
                    .cornerRadius(10)
                    .padding(.bottom, 400)
                }
                
                
            }
        }
    }
}

#Preview {
    
}
