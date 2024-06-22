//
//  FrameworkViewModel.swift
//  AppleFramework
//
//  Created by Jin on 16/6/24.
//

import Foundation

class FrameworkViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{
            isDetailViewPresented = true
        }
    }
    
    @Published var isDetailViewPresented: Bool = false
}
