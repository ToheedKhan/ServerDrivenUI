//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 03/11/23.
//

import Foundation
import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let uiModel: FeaturedImageUIModel
    
    var uniqueId: String { //(For SwiftUI forEach loop)Working with data that does not conform to Identifiable

        return ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
}
