//
//  PetDetailScreen.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 08/11/23.
//

import SwiftUI

//
//  PetDetailScreen.swift
//  Pets
//
//  Created by Mohammad Azam on 3/21/22.
//

import SwiftUI

struct PetDetailScreen: View {
    
    let petId: Int
    
    @StateObject private var vm: PetDetailViewModel
    
    init(petId: Int) {
        _vm = StateObject(wrappedValue: PetDetailViewModel(service: Webservice()))
        self.petId = petId
    }
    
    var body: some View {
//       Text("Pet Details Screen")
        ScrollView {
            ForEach(vm.components, id: \.id) { component in
                component.render()
            }
            
        }.task {
            await vm.load(petId: petId)
        }
    }
}

struct PetDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailScreen(petId: 2)
    }
}
