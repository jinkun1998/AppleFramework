//
//  XButton.swift
//  AppleFramework
//
//  Created by Jin on 22/6/24.
//

import SwiftUI

struct XButton: View {
    
    @Binding var isDetailViewPresented: Bool
    
    var body: some View {
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
    }
}

#Preview {
    XButton(isDetailViewPresented: .constant(false))
}
