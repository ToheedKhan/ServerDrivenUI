//
//  ListComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import Foundation

import SwiftUI

struct ListComponent: UIComponent {
    
    let id = UUID()
    let uiModel: ListUIModel
    
    func render() -> AnyView {
        ForEach(uiModel.rows, id: \.id) { row in
            Navigator.perform(action: uiModel.action, payload: row) {
                RowComponent(uiModel: row).render().toAnyView()
            }
        }.toAnyView()
    }
}
