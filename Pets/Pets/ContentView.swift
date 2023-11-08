//
//  ContentView.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm: PetListViewModel
    
    init() {
        _vm = StateObject(wrappedValue: PetListViewModel(service: LocalService()))
    }
   
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.id) { component in
                    component.render()
                }
                
                .navigationTitle("Pets")
            }.task {
                await vm.load()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
