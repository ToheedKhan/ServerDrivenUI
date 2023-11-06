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
    
    private var service: NetworkService
    //@Published to update ui when component updated
    @Published var components: [UIComponent] = []
    
    init(service: NetworkService) {
        self.service = service
    }
    
    /*
     Here every single time that we are running the application,
     it is going through the list view model and having an actual request from the Web service, which is fine. The Web service is going to perform an actual request and go through the network and give you the JSON.
     But when you are initially working and just trying to figure out things, it might be more useful than if you're reading the information from a local JSON file so that you can speed up your process.
     And then when you're happy with it, then you can start targeting the actual network service.
     
     
     When we're in planning phase, we are justtrying to figure out how to decode, trying to figure out the whole structure.
     It might be much better if we are reading all of this, Json, from local Json file.
     */
    func load() async {
        
        do {
            let screenModel = try await service.load(Constants.ScreenResources.petListing)
            self.components = try screenModel.buildComponents()
            
        } catch {
            print(error)
        }
        
    }
}
