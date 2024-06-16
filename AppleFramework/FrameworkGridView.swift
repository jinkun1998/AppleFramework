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
        
        LazyVGrid(columns: colums){
            FrameworkTitleView(appName: "App Clips", imageName: "app-clip")
        }
    }
}

#Preview {
    FrameworkGridView()
}


struct FrameworkTitleView:View{
    
    let appName:String
    let imageName:String
    
    var body:some View{
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            
            Text(appName)
                .font(.title2)
                .fontWeight(.semibold)
        }
    }
}
