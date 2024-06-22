//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by Jin on 16/6/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    var isShowXMark: Bool = true
    @Binding var isDetailViewPresented: Bool
    @State private var isSafariViewPresented: Bool = false
    
    var body: some View {
        VStack{
            
            if (isShowXMark){
                XButton(isDetailViewPresented: $isDetailViewPresented)
            }
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
            
            Spacer()
            
            AFButton(isSafariViewPresented: $isSafariViewPresented)
        }
        .sheet(isPresented: $isSafariViewPresented, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework,
        isDetailViewPresented: .constant(false))
}
