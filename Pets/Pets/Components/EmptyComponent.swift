//
//  EmptyComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import Foundation

import SwiftUI

struct EmptyComponent: UIComponent {
    
    let id = UUID()
    
    func render() -> AnyView {
        EmptyView().toAnyView()
    }
    
}
