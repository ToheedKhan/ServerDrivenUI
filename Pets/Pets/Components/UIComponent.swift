//
//  UIComponent.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 03/11/23.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }
    func render() -> AnyView
}
