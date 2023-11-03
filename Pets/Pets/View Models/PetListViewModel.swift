//
//  PetListViewModel.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 03/11/23.
//

import Foundation
//To run on main thread
@MainActor
class PetListViewModel: ObservableObject {
    
    private var service: Webservice
    //@Published to update ui when component updated
    @Published var components: [UIComponent] = []
    
    init(service: Webservice) {
        self.service = service
    }
    
    func load() async {
        
        do {
            let screenModel = try await service.load(resource: Constants.Urls.petListing)
            self.components = try screenModel.buildComponents()
            
        } catch {
            print(error)
        }
        
    }
}
