//
//  RatingRowComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import Foundation

import SwiftUI

struct RatingRowComponent: UIComponent {
    
    let uiModel: RatingRowUIModel
    
    let id = UUID()
    
    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating)).toAnyView()
    }
    
}
