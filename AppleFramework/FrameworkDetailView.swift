//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by Jin on 16/6/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isDetailViewPresented: Bool
    @State private var isSafariViewPresented: Bool = false
    
    var body: some View {
        VStack{
            
            HStack {
                Spacer()
                
                Button(action: {
                    isDetailViewPresented = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
                })
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .padding()
            
//            Link(destination: URL(string: framework.urlString)!) {
//                Text("Learn more")
//                    .font(.title2)
//                    .fontWeight(.semibold)
//                    .frame(width: 280, height: 50)
//                    .foregroundColor(Color.white)
//                    .background(Color.red)
//                    .cornerRadius(10)
//            }
            
            Button(action: {
                isSafariViewPresented = true
            }, label: {
                Text("Learn more")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(10)
            })
        }
        .sheet(isPresented: $isSafariViewPresented, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isDetailViewPresented: .constant(false))
}
