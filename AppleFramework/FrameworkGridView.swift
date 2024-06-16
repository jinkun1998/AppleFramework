//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by Jin on 16/6/24.
//

import SwiftUI

struct FrameworkGridView: View {

    @StateObject var viewModel = FrameworkViewModel()

    var body: some View {
        
        let colums: [GridItem] = [
            GridItem(),
            GridItem(),
            GridItem()
        ]
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isDetailViewPresented, content: {
                FrameworkDetailView(
                    framework: viewModel.selectedFramework!,
                    isDetailViewPresented: $viewModel.isDetailViewPresented)
            })
        }
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
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
