//
//  PageControl.swift
//  Landmarks
//
//  Created by Lucas Migge de Barros on 23/11/22.
//

import Foundation
import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    
    var numberOfPages : Int
    @Binding var currentPage : Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(control: self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(context.coordinator, action: #selector(Coordinator.updateCurrentPage(sender:)), for: .valueChanged)
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator : NSObject {
        
        var control : PageControl
        
        init(control: PageControl) {
            self.control = control
        }
        
        
       @objc
        func updateCurrentPage(sender : UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
