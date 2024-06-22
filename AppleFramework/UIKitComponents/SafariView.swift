//
//  SafariView.swift
//  AppleFramework
//
//  Created by Jin on 16/6/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    
    var url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
