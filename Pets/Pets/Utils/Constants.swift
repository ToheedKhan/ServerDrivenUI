//
//  Constants.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 03/11/23.
//

import Foundation

struct Constants {
    
    struct Urls {
        static let baseUrl = "http://localhost:3000"
        static let petListing = "\(baseUrl)/pet-listing"
    }
    
    struct ScreenResources {
        
        static let baseUrl = "localhost"
        static let petListing = "pet-listing"
        
        static func petDetail(petId: Int) -> String {
            return "pet-detail/\(petId)"
        }
        
        static func resource(for resourceName: String) -> URL? {
            
            var components = URLComponents()
            components.scheme = "http"
            components.percentEncodedHost = baseUrl
            components.port = 3000
//            components.encodedHost = baseUrl
            components.path = "/\(resourceName)"
            return components.url
            
        }
        
    }
}
