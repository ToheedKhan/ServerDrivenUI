//
//  RowComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import Foundation

import SwiftUI

struct RowComponent: UIComponent {
    
    let id = UUID()
    let uiModel: RowUIModel
    
    func render() -> AnyView {
        
        HStack {
            if let imageUrl = uiModel.imageUrl {
                AsyncImage(url: imageUrl) { image in
                    image.resizable()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }.toAnyView()
            }
            
            VStack(alignment: .leading) {
                Text(uiModel.title).foregroundColor(.black)
                Text(uiModel.subTitle ?? "").opacity(0.4)
                Text(uiModel.description ?? "")
            }
        }.padding()
            .toAnyView()        
    }
}
