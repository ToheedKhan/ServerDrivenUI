//
//  PetDetailViewModel.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import Foundation
@MainActor
class PetDetailViewModel: ObservableObject {
    
    private var service: NetworkService
    @Published var components: [UIComponent] = []
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func load(petId: Int) async {
        do {
            let screenModel = try await service.load(Constants.ScreenResources.petDetail(petId: petId))
            self.components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
}
