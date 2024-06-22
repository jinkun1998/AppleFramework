//
//  FrameworkTitleView.swift
//  AppleFramework
//
//  Created by Jin on 22/6/24.
//

import SwiftUI

struct FrameworkTitleView:View{
    
    let framework: Framework
    
    var body:some View{
        VStack {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .foregroundColor(Color(.label))
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
