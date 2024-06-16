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
            
            Button(action: {
                
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
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isDetailViewPresented: .constant(false))
}
