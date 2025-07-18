//
//  ListUIModel.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import Foundation

struct RowUIModel: Decodable {
    let id: Int
    let title: String
    let subTitle: String?
    let imageUrl: URL?
    let description: String?
}

struct ListUIModel: Decodable {
    let rows: [RowUIModel]
    let action: Action
}
