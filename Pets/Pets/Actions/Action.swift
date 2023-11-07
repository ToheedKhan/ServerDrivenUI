//
//  Action.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 07/11/23.
//

import Foundation

enum ActionType: String, Decodable {
    case sheet
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}


