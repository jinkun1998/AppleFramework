//
//  AFButton.swift
//  AppleFramework
//
//  Created by Jin on 22/6/24.
//

import SwiftUI

struct AFButton: View {
    
    @Binding var isSafariViewPresented: Bool
    
    var body: some View {
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
}

#Preview {
    AFButton(isSafariViewPresented: .constant(false))
}
