//
//  NetworkService.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 06/11/23.
//

import Foundation

protocol NetworkService {
    func load(_ resourceName: String) async throws -> ScreenModel
}
