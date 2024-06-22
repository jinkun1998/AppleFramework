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
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(value: framework, label: {
                            FrameworkTitleView(framework: framework)
                        })
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkNewDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


