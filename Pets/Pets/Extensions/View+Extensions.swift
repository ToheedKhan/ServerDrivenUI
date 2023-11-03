//
//  View+Extensions.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 03/11/23.
//

import Foundation
import SwiftUI

/*
 A type-erased view.
 ///
 /// An `AnyView` allows changing the type of view used in a given view
 /// hierarchy. Whenever the type of view used with an `AnyView` changes, the old
 /// hierarchy is destroyed and a new hierarchy is created for the new type.
 */
extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
