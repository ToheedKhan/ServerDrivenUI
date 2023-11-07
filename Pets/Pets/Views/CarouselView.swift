//
//  CarouselView.swift
//  Pets
//
//  Created by Toheed Jahan Khan on 07/11/23.
//

import SwiftUI

struct CarouselView: View {
    
    let uiModel: CarouselUIModel
    
    var body: some View {
        ScrollView(.horizontal) {
            
            HStack {
                
                ForEach(uiModel.imageUrls, id: \.self) { url in
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .frame(width: 200, height: 200)
                    } placeholder: {
                        ProgressView()
                    }
                }
                
            }
            
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(uiModel: CarouselUIModel(imageUrls: []))
    }
}
