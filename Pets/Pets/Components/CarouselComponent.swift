//
//  CarouselComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 07/11/23.
//

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
    
    let uiModel: CarouselUIModel
    let id = UUID()
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }    
}
