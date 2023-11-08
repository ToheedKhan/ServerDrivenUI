//
//  TextRowComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import Foundation
import SwiftUI

struct TextRowComponent: UIComponent {
    
    let id: UUID = UUID()
    
    let uiModel: TextRowUIModel
    
    func render() -> AnyView {
        Text(uiModel.text)
            .padding()
            .toAnyView()
    }
    
}
