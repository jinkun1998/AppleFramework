//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by Jin on 16/6/24.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        
        let colums: [GridItem] = [
            GridItem(),
            GridItem(),
            GridItem()
        ]
        
        LazyVGrid(columns: colums) {
            ForEach(MockData.frameworks){ framework in
                FrameworkTitleView(framework: framework)
            }
        }
        .safeAreaPadding(.top, 100)
    }
}

#Preview {
    FrameworkGridView()
}


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
                .fontWeight(.semibold)
        }
    }
}
